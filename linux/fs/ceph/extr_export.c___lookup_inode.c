
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_root; } ;
struct inode {int dummy; } ;
struct ceph_vino {int snap; int ino; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_5__ {TYPE_1__ lookupino; } ;
struct ceph_mds_request {int r_num_caps; struct inode* r_target_inode; struct ceph_vino r_ino1; TYPE_2__ r_args; } ;
struct ceph_mds_client {int dummy; } ;
struct TYPE_6__ {struct ceph_mds_client* mdsc; } ;


 int CEPH_CAP_XATTR_SHARED ;
 int CEPH_MDS_OP_LOOKUPINO ;
 int CEPH_NOSNAP ;
 int CEPH_STAT_CAP_INODE ;
 struct inode* ERR_CAST (struct ceph_mds_request*) ;
 struct inode* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int USE_ANY_MDS ;
 struct inode* ceph_find_inode (struct super_block*,struct ceph_vino) ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int ,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 TYPE_3__* ceph_sb_to_client (struct super_block*) ;
 scalar_t__ ceph_security_xattr_wanted (int ) ;
 int cpu_to_le32 (int) ;
 int d_inode (int ) ;
 int ihold (struct inode*) ;

__attribute__((used)) static struct inode *__lookup_inode(struct super_block *sb, u64 ino)
{
 struct ceph_mds_client *mdsc = ceph_sb_to_client(sb)->mdsc;
 struct inode *inode;
 struct ceph_vino vino;
 int err;

 vino.ino = ino;
 vino.snap = CEPH_NOSNAP;
 inode = ceph_find_inode(sb, vino);
 if (!inode) {
  struct ceph_mds_request *req;
  int mask;

  req = ceph_mdsc_create_request(mdsc, CEPH_MDS_OP_LOOKUPINO,
            USE_ANY_MDS);
  if (IS_ERR(req))
   return ERR_CAST(req);

  mask = CEPH_STAT_CAP_INODE;
  if (ceph_security_xattr_wanted(d_inode(sb->s_root)))
   mask |= CEPH_CAP_XATTR_SHARED;
  req->r_args.lookupino.mask = cpu_to_le32(mask);

  req->r_ino1 = vino;
  req->r_num_caps = 1;
  err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
  inode = req->r_target_inode;
  if (inode)
   ihold(inode);
  ceph_mdsc_put_request(req);
  if (!inode)
   return err < 0 ? ERR_PTR(err) : ERR_PTR(-ESTALE);
 }
 return inode;
}
