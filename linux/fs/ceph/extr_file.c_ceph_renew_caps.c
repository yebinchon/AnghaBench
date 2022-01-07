
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ceph_mds_request {int r_num_caps; int r_fmode; struct inode* r_inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; scalar_t__ i_auth_cap; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;


 int CEPH_CAP_ANY_WR ;
 int CEPH_CAP_FILE_LAZYIO ;
 int CEPH_CAP_FILE_RD ;
 int CEPH_CAP_FILE_WR ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int O_LAZY ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int __ceph_caps_file_wanted (struct ceph_inode_info*) ;
 int __ceph_caps_issued (struct ceph_inode_info*,int *) ;
 scalar_t__ __ceph_is_any_real_caps (struct ceph_inode_info*) ;
 int ceph_cap_string (int) ;
 int ceph_check_caps (struct ceph_inode_info*,int ,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 TYPE_1__* ceph_sb_to_client (int ) ;
 int dout (char*,struct inode*,int,...) ;
 int ihold (struct inode*) ;
 struct ceph_mds_request* prepare_open_request (int ,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_renew_caps(struct inode *inode)
{
 struct ceph_mds_client *mdsc = ceph_sb_to_client(inode->i_sb)->mdsc;
 struct ceph_inode_info *ci = ceph_inode(inode);
 struct ceph_mds_request *req;
 int err, flags, wanted;

 spin_lock(&ci->i_ceph_lock);
 wanted = __ceph_caps_file_wanted(ci);
 if (__ceph_is_any_real_caps(ci) &&
     (!(wanted & CEPH_CAP_ANY_WR) || ci->i_auth_cap)) {
  int issued = __ceph_caps_issued(ci, ((void*)0));
  spin_unlock(&ci->i_ceph_lock);
  dout("renew caps %p want %s issued %s updating mds_wanted\n",
       inode, ceph_cap_string(wanted), ceph_cap_string(issued));
  ceph_check_caps(ci, 0, ((void*)0));
  return 0;
 }
 spin_unlock(&ci->i_ceph_lock);

 flags = 0;
 if ((wanted & CEPH_CAP_FILE_RD) && (wanted & CEPH_CAP_FILE_WR))
  flags = O_RDWR;
 else if (wanted & CEPH_CAP_FILE_RD)
  flags = O_RDONLY;
 else if (wanted & CEPH_CAP_FILE_WR)
  flags = O_WRONLY;





 req = prepare_open_request(inode->i_sb, flags, 0);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out;
 }

 req->r_inode = inode;
 ihold(inode);
 req->r_num_caps = 1;
 req->r_fmode = -1;

 err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
 ceph_mdsc_put_request(req);
out:
 dout("renew caps %p open result=%d\n", inode, err);
 return err < 0 ? err : 0;
}
