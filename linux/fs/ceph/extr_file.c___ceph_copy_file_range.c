
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct inode {scalar_t__ i_sb; int i_mapping; } ;
struct file {int dummy; } ;
struct ceph_object_locator {void* pool_ns; int pool; } ;
struct ceph_object_id {int dummy; } ;
struct TYPE_4__ {int snap; int ino; } ;
struct TYPE_6__ {scalar_t__ stripe_unit; int stripe_count; size_t object_size; int pool_ns; int pool_id; } ;
struct ceph_inode_info {int i_ceph_lock; int i_inline_version; TYPE_1__ i_vino; TYPE_3__ i_layout; } ;
struct ceph_fs_client {TYPE_2__* client; } ;
struct ceph_cap_flush {int dummy; } ;
typedef int ssize_t ;
typedef size_t loff_t ;
struct TYPE_5__ {int osdc; int fsid; } ;


 int CEPH_CAP_FILE_WR ;
 int CEPH_INLINE_NONE ;
 scalar_t__ CEPH_NOSNAP ;
 int CEPH_OSD_OP_FLAG_FADVISE_DONTNEED ;
 int CEPH_OSD_OP_FLAG_FADVISE_NOCACHE ;
 int CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL ;
 int CHECK_CAPS_AUTHONLY ;
 int CHECK_CAPS_NODELAY ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EROFS ;
 int EXDEV ;
 int NOCOPYFROM ;
 size_t PAGE_SHIFT ;
 int __ceph_mark_dirty_caps (struct ceph_inode_info*,int ,struct ceph_cap_flush**) ;
 int __mark_inode_dirty (struct inode*,int) ;
 struct ceph_cap_flush* ceph_alloc_cap_flush () ;
 int ceph_calc_file_object_mapping (TYPE_3__*,size_t,size_t,scalar_t__*,scalar_t__*,size_t*) ;
 int ceph_check_caps (struct ceph_inode_info*,int,int *) ;
 int ceph_free_cap_flush (struct ceph_cap_flush*) ;
 scalar_t__ ceph_fsid_compare (int *,int *) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 scalar_t__ ceph_inode_set_size (struct inode*,size_t) ;
 struct ceph_fs_client* ceph_inode_to_client (struct inode*) ;
 int ceph_oid_init (struct ceph_object_id*) ;
 int ceph_oid_printf (struct ceph_object_id*,char*,int ,scalar_t__) ;
 int ceph_osdc_copy_from (int *,int ,int ,struct ceph_object_id*,struct ceph_object_locator*,int,struct ceph_object_id*,struct ceph_object_locator*,int,int ) ;
 scalar_t__ ceph_quota_is_max_bytes_approaching (struct inode*,size_t) ;
 scalar_t__ ceph_snap (struct inode*) ;
 scalar_t__ ceph_test_mount_opt (struct ceph_fs_client*,int ) ;
 void* ceph_try_get_string (int ) ;
 int do_splice_direct (struct file*,size_t*,struct file*,size_t*,size_t,unsigned int) ;
 int dout (char*,...) ;
 struct inode* file_inode (struct file*) ;
 int file_update_time (struct file*) ;
 int file_write_and_wait_range (struct file*,size_t,size_t) ;
 int get_rd_wr_caps (struct file*,int*,struct file*,size_t,int*) ;
 size_t i_size_read (struct inode*) ;
 int inode_inc_iversion_raw (struct inode*) ;
 int invalidate_inode_pages2_range (int ,size_t,size_t) ;
 int is_file_size_ok (struct inode*,struct inode*,size_t,size_t,size_t) ;
 int put_rd_wr_caps (struct ceph_inode_info*,int,struct ceph_inode_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t __ceph_copy_file_range(struct file *src_file, loff_t src_off,
          struct file *dst_file, loff_t dst_off,
          size_t len, unsigned int flags)
{
 struct inode *src_inode = file_inode(src_file);
 struct inode *dst_inode = file_inode(dst_file);
 struct ceph_inode_info *src_ci = ceph_inode(src_inode);
 struct ceph_inode_info *dst_ci = ceph_inode(dst_inode);
 struct ceph_cap_flush *prealloc_cf;
 struct ceph_fs_client *src_fsc = ceph_inode_to_client(src_inode);
 struct ceph_object_locator src_oloc, dst_oloc;
 struct ceph_object_id src_oid, dst_oid;
 loff_t endoff = 0, size;
 ssize_t ret = -EIO;
 u64 src_objnum, dst_objnum, src_objoff, dst_objoff;
 u32 src_objlen, dst_objlen, object_size;
 int src_got = 0, dst_got = 0, err, dirty;
 bool do_final_copy = 0;

 if (src_inode->i_sb != dst_inode->i_sb) {
  struct ceph_fs_client *dst_fsc = ceph_inode_to_client(dst_inode);

  if (ceph_fsid_compare(&src_fsc->client->fsid,
          &dst_fsc->client->fsid)) {
   dout("Copying files across clusters: src: %pU dst: %pU\n",
        &src_fsc->client->fsid, &dst_fsc->client->fsid);
   return -EXDEV;
  }
 }
 if (ceph_snap(dst_inode) != CEPH_NOSNAP)
  return -EROFS;
 if (ceph_test_mount_opt(src_fsc, NOCOPYFROM))
  return -EOPNOTSUPP;






 if ((src_ci->i_layout.stripe_unit != dst_ci->i_layout.stripe_unit) ||
     (src_ci->i_layout.stripe_count != 1) ||
     (dst_ci->i_layout.stripe_count != 1) ||
     (src_ci->i_layout.object_size != dst_ci->i_layout.object_size)) {
  dout("Invalid src/dst files layout\n");
  return -EOPNOTSUPP;
 }

 if (len < src_ci->i_layout.object_size)
  return -EOPNOTSUPP;

 prealloc_cf = ceph_alloc_cap_flush();
 if (!prealloc_cf)
  return -ENOMEM;


 ret = file_write_and_wait_range(src_file, src_off, (src_off + len));
 if (ret < 0) {
  dout("failed to write src file (%zd)\n", ret);
  goto out;
 }
 ret = file_write_and_wait_range(dst_file, dst_off, (dst_off + len));
 if (ret < 0) {
  dout("failed to write dst file (%zd)\n", ret);
  goto out;
 }






 err = get_rd_wr_caps(src_file, &src_got,
        dst_file, (dst_off + len), &dst_got);
 if (err < 0) {
  dout("get_rd_wr_caps returned %d\n", err);
  ret = -EOPNOTSUPP;
  goto out;
 }

 ret = is_file_size_ok(src_inode, dst_inode, src_off, dst_off, len);
 if (ret < 0)
  goto out_caps;

 size = i_size_read(dst_inode);
 endoff = dst_off + len;


 ret = invalidate_inode_pages2_range(dst_inode->i_mapping,
         dst_off >> PAGE_SHIFT,
         endoff >> PAGE_SHIFT);
 if (ret < 0) {
  dout("Failed to invalidate inode pages (%zd)\n", ret);
  ret = 0;
 }
 src_oloc.pool = src_ci->i_layout.pool_id;
 src_oloc.pool_ns = ceph_try_get_string(src_ci->i_layout.pool_ns);
 dst_oloc.pool = dst_ci->i_layout.pool_id;
 dst_oloc.pool_ns = ceph_try_get_string(dst_ci->i_layout.pool_ns);

 ceph_calc_file_object_mapping(&src_ci->i_layout, src_off,
          src_ci->i_layout.object_size,
          &src_objnum, &src_objoff, &src_objlen);
 ceph_calc_file_object_mapping(&dst_ci->i_layout, dst_off,
          dst_ci->i_layout.object_size,
          &dst_objnum, &dst_objoff, &dst_objlen);

 if (src_objoff != dst_objoff) {
  ret = -EOPNOTSUPP;
  goto out_caps;
 }






 if (src_objoff) {




  put_rd_wr_caps(src_ci, src_got, dst_ci, dst_got);
  ret = do_splice_direct(src_file, &src_off, dst_file,
           &dst_off, src_objlen, flags);
  if (ret < 0) {
   dout("do_splice_direct returned %d\n", err);
   goto out;
  }
  len -= ret;
  err = get_rd_wr_caps(src_file, &src_got,
         dst_file, (dst_off + len), &dst_got);
  if (err < 0)
   goto out;
  err = is_file_size_ok(src_inode, dst_inode,
          src_off, dst_off, len);
  if (err < 0)
   goto out_caps;
 }
 object_size = src_ci->i_layout.object_size;
 while (len >= object_size) {
  ceph_calc_file_object_mapping(&src_ci->i_layout, src_off,
           object_size, &src_objnum,
           &src_objoff, &src_objlen);
  ceph_calc_file_object_mapping(&dst_ci->i_layout, dst_off,
           object_size, &dst_objnum,
           &dst_objoff, &dst_objlen);
  ceph_oid_init(&src_oid);
  ceph_oid_printf(&src_oid, "%llx.%08llx",
    src_ci->i_vino.ino, src_objnum);
  ceph_oid_init(&dst_oid);
  ceph_oid_printf(&dst_oid, "%llx.%08llx",
    dst_ci->i_vino.ino, dst_objnum);

  err = ceph_osdc_copy_from(
   &src_fsc->client->osdc,
   src_ci->i_vino.snap, 0,
   &src_oid, &src_oloc,
   CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL |
   CEPH_OSD_OP_FLAG_FADVISE_NOCACHE,
   &dst_oid, &dst_oloc,
   CEPH_OSD_OP_FLAG_FADVISE_SEQUENTIAL |
   CEPH_OSD_OP_FLAG_FADVISE_DONTNEED, 0);
  if (err) {
   dout("ceph_osdc_copy_from returned %d\n", err);
   if (!ret)
    ret = err;
   goto out_caps;
  }
  len -= object_size;
  src_off += object_size;
  dst_off += object_size;
  ret += object_size;
 }

 if (len)

  do_final_copy = 1;

 file_update_time(dst_file);
 inode_inc_iversion_raw(dst_inode);

 if (endoff > size) {
  int caps_flags = 0;


  if (ceph_quota_is_max_bytes_approaching(dst_inode, endoff))
   caps_flags |= CHECK_CAPS_NODELAY;
  if (ceph_inode_set_size(dst_inode, endoff))
   caps_flags |= CHECK_CAPS_AUTHONLY;
  if (caps_flags)
   ceph_check_caps(dst_ci, caps_flags, ((void*)0));
 }

 spin_lock(&dst_ci->i_ceph_lock);
 dst_ci->i_inline_version = CEPH_INLINE_NONE;
 dirty = __ceph_mark_dirty_caps(dst_ci, CEPH_CAP_FILE_WR, &prealloc_cf);
 spin_unlock(&dst_ci->i_ceph_lock);
 if (dirty)
  __mark_inode_dirty(dst_inode, dirty);

out_caps:
 put_rd_wr_caps(src_ci, src_got, dst_ci, dst_got);

 if (do_final_copy) {
  err = do_splice_direct(src_file, &src_off, dst_file,
           &dst_off, len, flags);
  if (err < 0) {
   dout("do_splice_direct returned %d\n", err);
   goto out;
  }
  len -= err;
  ret += err;
 }

out:
 ceph_free_cap_flush(prealloc_cf);

 return ret;
}
