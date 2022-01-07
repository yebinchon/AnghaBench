
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_sb; } ;
struct file {int f_mode; } ;
struct TYPE_10__ {scalar_t__ has_create_ino; TYPE_4__* head; } ;
struct TYPE_7__ {int mask; } ;
struct TYPE_8__ {TYPE_2__ open; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct dentry {int r_num_caps; int r_dentry_drop; scalar_t__ r_op; int r_fmode; scalar_t__ r_target_inode; int r_err; TYPE_5__ r_reply_info; int r_req_flags; struct inode* r_parent; TYPE_3__ r_args; int * r_pagelist; int r_dentry_unless; int r_dentry; TYPE_1__ d_name; } ;
struct ceph_mds_request {int r_num_caps; int r_dentry_drop; scalar_t__ r_op; int r_fmode; scalar_t__ r_target_inode; int r_err; TYPE_5__ r_reply_info; int r_req_flags; struct inode* r_parent; TYPE_3__ r_args; int * r_pagelist; int r_dentry_unless; int r_dentry; TYPE_1__ d_name; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct ceph_acl_sec_ctx {int * pagelist; } ;
struct TYPE_9__ {int is_dentry; } ;


 int CEPH_CAP_AUTH_EXCL ;
 int CEPH_CAP_AUTH_SHARED ;
 int CEPH_CAP_FILE_EXCL ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_CAP_XATTR_SHARED ;
 scalar_t__ CEPH_MDS_OP_CREATE ;
 int CEPH_MDS_R_PARENT_LOCKED ;
 int CEPH_STAT_CAP_INODE ;
 int EDQUOT ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int FMODE_CREATED ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ NAME_MAX ;
 unsigned int O_CREAT ;
 unsigned int O_TRUNC ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* ceph_finish_lookup (struct dentry*,struct dentry*,int) ;
 int ceph_handle_notrace_create (struct inode*,struct dentry*) ;
 int ceph_handle_snapdir (struct dentry*,struct dentry*,int) ;
 int ceph_init_inode_acls (int ,struct ceph_acl_sec_ctx*) ;
 int ceph_inode (scalar_t__) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,struct inode*,struct dentry*) ;
 int ceph_mdsc_put_request (struct dentry*) ;
 int ceph_open ;
 int ceph_pre_init_acls (struct inode*,int *,struct ceph_acl_sec_ctx*) ;
 int ceph_put_fmode (int ,int ) ;
 scalar_t__ ceph_quota_is_max_files_exceeded (struct inode*) ;
 int ceph_release_acl_sec_ctx (struct ceph_acl_sec_ctx*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 int ceph_security_init_secctx (struct dentry*,int ,struct ceph_acl_sec_ctx*) ;
 scalar_t__ ceph_security_xattr_wanted (struct inode*) ;
 int cpu_to_le32 (int) ;
 scalar_t__ d_in_lookup (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_is_symlink (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dget (struct dentry*) ;
 int dout (char*,...) ;
 int finish_no_open (struct file*,struct dentry*) ;
 int finish_open (struct file*,struct dentry*,int ) ;
 struct dentry* prepare_open_request (int ,unsigned int,int ) ;
 int set_bit (int ,int *) ;

int ceph_atomic_open(struct inode *dir, struct dentry *dentry,
       struct file *file, unsigned flags, umode_t mode)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(dir->i_sb);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_mds_request *req;
 struct dentry *dn;
 struct ceph_acl_sec_ctx as_ctx = {};
 int mask;
 int err;

 dout("atomic_open %p dentry %p '%pd' %s flags %d mode 0%o\n",
      dir, dentry, dentry,
      d_unhashed(dentry) ? "unhashed" : "hashed", flags, mode);

 if (dentry->d_name.len > NAME_MAX)
  return -ENAMETOOLONG;

 if (flags & O_CREAT) {
  if (ceph_quota_is_max_files_exceeded(dir))
   return -EDQUOT;
  err = ceph_pre_init_acls(dir, &mode, &as_ctx);
  if (err < 0)
   return err;
  err = ceph_security_init_secctx(dentry, mode, &as_ctx);
  if (err < 0)
   goto out_ctx;
 } else if (!d_in_lookup(dentry)) {

  return -ENOENT;
 }


 req = prepare_open_request(dir->i_sb, flags, mode);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out_ctx;
 }
 req->r_dentry = dget(dentry);
 req->r_num_caps = 2;
 if (flags & O_CREAT) {
  req->r_dentry_drop = CEPH_CAP_FILE_SHARED | CEPH_CAP_AUTH_EXCL;
  req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
  if (as_ctx.pagelist) {
   req->r_pagelist = as_ctx.pagelist;
   as_ctx.pagelist = ((void*)0);
  }
 }

       mask = CEPH_STAT_CAP_INODE | CEPH_CAP_AUTH_SHARED;
       if (ceph_security_xattr_wanted(dir))
               mask |= CEPH_CAP_XATTR_SHARED;
       req->r_args.open.mask = cpu_to_le32(mask);

 req->r_parent = dir;
 set_bit(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
 err = ceph_mdsc_do_request(mdsc,
       (flags & (O_CREAT|O_TRUNC)) ? dir : ((void*)0),
       req);
 err = ceph_handle_snapdir(req, dentry, err);
 if (err)
  goto out_req;

 if ((flags & O_CREAT) && !req->r_reply_info.head->is_dentry)
  err = ceph_handle_notrace_create(dir, dentry);

 if (d_in_lookup(dentry)) {
  dn = ceph_finish_lookup(req, dentry, err);
  if (IS_ERR(dn))
   err = PTR_ERR(dn);
 } else {

  dn = ((void*)0);
 }
 if (err)
  goto out_req;
 if (dn || d_really_is_negative(dentry) || d_is_symlink(dentry)) {

  dout("atomic_open finish_no_open on dn %p\n", dn);
  err = finish_no_open(file, dn);
 } else {
  dout("atomic_open finish_open on dn %p\n", dn);
  if (req->r_op == CEPH_MDS_OP_CREATE && req->r_reply_info.has_create_ino) {
   ceph_init_inode_acls(d_inode(dentry), &as_ctx);
   file->f_mode |= FMODE_CREATED;
  }
  err = finish_open(file, dentry, ceph_open);
 }
out_req:
 if (!req->r_err && req->r_target_inode)
  ceph_put_fmode(ceph_inode(req->r_target_inode), req->r_fmode);
 ceph_mdsc_put_request(req);
out_ctx:
 ceph_release_acl_sec_ctx(&as_ctx);
 dout("atomic_open result=%d\n", err);
 return err;
}
