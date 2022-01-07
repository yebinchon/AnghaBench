
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_mode; int i_ino; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ceph_dir_file_info* private_data; } ;
struct dir_context {int pos; } ;
struct TYPE_6__ {int len; int name; } ;
struct dentry {TYPE_3__ d_name; int d_sb; int d_lock; } ;
struct ceph_readdir_cache_control {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ceph_dir_file_info {int readdir_cache_idx; scalar_t__ dir_release_count; TYPE_2__ file_info; } ;
struct ceph_dentry_info {int offset; int lease_shared_gen; } ;


 int CEPH_F_ATEND ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int __ceph_dentry_dir_lease_touch (struct ceph_dentry_info*) ;
 struct dentry* __dcache_find_get_entry (struct dentry*,int,struct ceph_readdir_cache_control*) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 int ceph_readdir_cache_release (struct ceph_readdir_cache_control*) ;
 int ceph_translate_ino (int ,int ) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dir_emit (struct dir_context*,int ,int ,int ,int) ;
 int div_u64 (int ,int) ;
 int dout (char*,...) ;
 int dput (struct dentry*) ;
 scalar_t__ fpos_cmp (int,int) ;
 scalar_t__ fpos_off (int) ;
 int i_size_read (struct inode*) ;
 int note_last_dentry (struct ceph_dir_file_info*,int ,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __dcache_readdir(struct file *file, struct dir_context *ctx,
       int shared_gen)
{
 struct ceph_dir_file_info *dfi = file->private_data;
 struct dentry *parent = file->f_path.dentry;
 struct inode *dir = d_inode(parent);
 struct dentry *dentry, *last = ((void*)0);
 struct ceph_dentry_info *di;
 struct ceph_readdir_cache_control cache_ctl = {};
 u64 idx = 0;
 int err = 0;

 dout("__dcache_readdir %p v%u at %llx\n", dir, (unsigned)shared_gen, ctx->pos);


 if (ctx->pos > 2) {
  u64 count = div_u64(i_size_read(dir), sizeof(struct dentry *));
  while (count > 0) {
   u64 step = count >> 1;
   dentry = __dcache_find_get_entry(parent, idx + step,
        &cache_ctl);
   if (!dentry) {

    idx = 0;
    break;
   }
   if (IS_ERR(dentry)) {
    err = PTR_ERR(dentry);
    goto out;
   }
   di = ceph_dentry(dentry);
   spin_lock(&dentry->d_lock);
   if (fpos_cmp(di->offset, ctx->pos) < 0) {
    idx += step + 1;
    count -= step + 1;
   } else {
    count = step;
   }
   spin_unlock(&dentry->d_lock);
   dput(dentry);
  }

  dout("__dcache_readdir %p cache idx %llu\n", dir, idx);
 }


 for (;;) {
  bool emit_dentry = 0;
  dentry = __dcache_find_get_entry(parent, idx++, &cache_ctl);
  if (!dentry) {
   dfi->file_info.flags |= CEPH_F_ATEND;
   err = 0;
   break;
  }
  if (IS_ERR(dentry)) {
   err = PTR_ERR(dentry);
   goto out;
  }

  spin_lock(&dentry->d_lock);
  di = ceph_dentry(dentry);
  if (d_unhashed(dentry) ||
      d_really_is_negative(dentry) ||
      di->lease_shared_gen != shared_gen) {
   spin_unlock(&dentry->d_lock);
   dput(dentry);
   err = -EAGAIN;
   goto out;
  }
  if (fpos_cmp(ctx->pos, di->offset) <= 0) {
   __ceph_dentry_dir_lease_touch(di);
   emit_dentry = 1;
  }
  spin_unlock(&dentry->d_lock);

  if (emit_dentry) {
   dout(" %llx dentry %p %pd %p\n", di->offset,
        dentry, dentry, d_inode(dentry));
   ctx->pos = di->offset;
   if (!dir_emit(ctx, dentry->d_name.name,
          dentry->d_name.len,
          ceph_translate_ino(dentry->d_sb,
        d_inode(dentry)->i_ino),
          d_inode(dentry)->i_mode >> 12)) {
    dput(dentry);
    err = 0;
    break;
   }
   ctx->pos++;

   if (last)
    dput(last);
   last = dentry;
  } else {
   dput(dentry);
  }
 }
out:
 ceph_readdir_cache_release(&cache_ctl);
 if (last) {
  int ret;
  di = ceph_dentry(last);
  ret = note_last_dentry(dfi, last->d_name.name, last->d_name.len,
           fpos_off(di->offset) + 1);
  if (ret < 0)
   err = ret;
  dput(last);

  if (dfi->readdir_cache_idx >= 0) {
   dfi->readdir_cache_idx = -1;
   dfi->dir_release_count = 0;
  }
 }
 return err;
}
