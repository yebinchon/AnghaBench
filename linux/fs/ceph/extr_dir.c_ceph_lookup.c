
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; int name; } ;
struct inode {TYPE_2__ d_name; int i_sb; } ;
struct dentry {TYPE_2__ d_name; int i_sb; } ;
struct TYPE_7__ {int mask; } ;
struct TYPE_8__ {TYPE_3__ getattr; } ;
struct ceph_mds_request {int r_num_caps; int r_req_flags; struct inode* r_parent; TYPE_4__ r_args; int r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int i_ceph_lock; int i_shared_gen; int i_ceph_flags; } ;
struct ceph_fs_client {TYPE_1__* mount_options; struct ceph_mds_client* mdsc; } ;
struct ceph_dentry_info {int lease_shared_gen; } ;
struct TYPE_5__ {int snapdir_name; } ;


 int CEPH_CAP_AUTH_SHARED ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_CAP_XATTR_SHARED ;
 int CEPH_MDS_OP_LOOKUP ;
 int CEPH_MDS_OP_LOOKUPSNAP ;
 int CEPH_MDS_R_PARENT_LOCKED ;
 scalar_t__ CEPH_SNAPDIR ;
 int CEPH_STAT_CAP_INODE ;
 int DCACHE ;
 int ENAMETOOLONG ;
 struct inode* ERR_CAST (struct ceph_mds_request*) ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int NAME_MAX ;
 int USE_ANY_MDS ;
 scalar_t__ __ceph_caps_issued_mask (struct ceph_inode_info*,int ,int) ;
 scalar_t__ __ceph_dir_is_complete (struct ceph_inode_info*) ;
 int atomic_read (int *) ;
 struct ceph_dentry_info* ceph_dentry (struct inode*) ;
 struct inode* ceph_finish_lookup (struct ceph_mds_request*,struct inode*,int) ;
 int ceph_handle_snapdir (struct ceph_mds_request*,struct inode*,int) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 scalar_t__ ceph_security_xattr_wanted (struct inode*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 scalar_t__ ceph_test_mount_opt (struct ceph_fs_client*,int ) ;
 int cpu_to_le32 (int) ;
 int d_add (struct inode*,int *) ;
 scalar_t__ d_really_is_negative (struct inode*) ;
 int dget (struct inode*) ;
 int dout (char*,struct inode*,...) ;
 int is_root_ceph_dentry (struct inode*,struct inode*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static struct dentry *ceph_lookup(struct inode *dir, struct dentry *dentry,
      unsigned int flags)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(dir->i_sb);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_mds_request *req;
 int op;
 int mask;
 int err;

 dout("lookup %p dentry %p '%pd'\n",
      dir, dentry, dentry);

 if (dentry->d_name.len > NAME_MAX)
  return ERR_PTR(-ENAMETOOLONG);


 if (d_really_is_negative(dentry)) {
  struct ceph_inode_info *ci = ceph_inode(dir);
  struct ceph_dentry_info *di = ceph_dentry(dentry);

  spin_lock(&ci->i_ceph_lock);
  dout(" dir %p flags are %d\n", dir, ci->i_ceph_flags);
  if (strncmp(dentry->d_name.name,
       fsc->mount_options->snapdir_name,
       dentry->d_name.len) &&
      !is_root_ceph_dentry(dir, dentry) &&
      ceph_test_mount_opt(fsc, DCACHE) &&
      __ceph_dir_is_complete(ci) &&
      (__ceph_caps_issued_mask(ci, CEPH_CAP_FILE_SHARED, 1))) {
   spin_unlock(&ci->i_ceph_lock);
   dout(" dir %p complete, -ENOENT\n", dir);
   d_add(dentry, ((void*)0));
   di->lease_shared_gen = atomic_read(&ci->i_shared_gen);
   return ((void*)0);
  }
  spin_unlock(&ci->i_ceph_lock);
 }

 op = ceph_snap(dir) == CEPH_SNAPDIR ?
  CEPH_MDS_OP_LOOKUPSNAP : CEPH_MDS_OP_LOOKUP;
 req = ceph_mdsc_create_request(mdsc, op, USE_ANY_MDS);
 if (IS_ERR(req))
  return ERR_CAST(req);
 req->r_dentry = dget(dentry);
 req->r_num_caps = 2;

 mask = CEPH_STAT_CAP_INODE | CEPH_CAP_AUTH_SHARED;
 if (ceph_security_xattr_wanted(dir))
  mask |= CEPH_CAP_XATTR_SHARED;
 req->r_args.getattr.mask = cpu_to_le32(mask);

 req->r_parent = dir;
 set_bit(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
 err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
 err = ceph_handle_snapdir(req, dentry, err);
 dentry = ceph_finish_lookup(req, dentry, err);
 ceph_mdsc_put_request(req);
 dout("lookup result=%p\n", dentry);
 return dentry;
}
