
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
struct kiocb {scalar_t__ ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {scalar_t__ i_size; int i_mapping; int i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* fs_devices; int sectorsize; } ;
struct btrfs_dio_data {int overwrite; size_t reserve; scalar_t__ unsubmitted_oe_range_start; scalar_t__ unsubmitted_oe_range_end; int member_0; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_9__ {int dio_sem; int runtime_flags; } ;
struct TYPE_8__ {struct btrfs_dio_data* journal_info; } ;
struct TYPE_7__ {int latest_bdev; } ;
struct TYPE_6__ {struct inode* host; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_HAS_ASYNC_EXTENT ;
 int BTRFS_INODE_READDIO_NEED_LOCK ;
 int DIO_LOCKING ;
 int DIO_SKIP_HOLES ;
 int EAGAIN ;
 int EIOCBQUEUED ;
 int IOCB_NOWAIT ;
 scalar_t__ WRITE ;
 int __blockdev_direct_IO (struct kiocb*,struct inode*,int ,struct iov_iter*,int ,int *,int ,int) ;
 int __endio_write_update_ordered (struct inode*,scalar_t__,scalar_t__,int) ;
 int btrfs_delalloc_release_extents (TYPE_4__*,size_t) ;
 int btrfs_delalloc_release_space (struct inode*,struct extent_changeset*,scalar_t__,size_t,int) ;
 int btrfs_delalloc_reserve_space (struct inode*,struct extent_changeset**,scalar_t__,size_t) ;
 int btrfs_get_blocks_direct ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_submit_direct ;
 scalar_t__ check_direct_IO (struct btrfs_fs_info*,struct iov_iter*,scalar_t__) ;
 TYPE_3__* current ;
 int down_read (int *) ;
 int extent_changeset_free (struct extent_changeset*) ;
 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;
 int inode_dio_begin (struct inode*) ;
 int inode_dio_end (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_rw (struct iov_iter*) ;
 size_t round_up (size_t,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t btrfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_dio_data dio_data = { 0 };
 struct extent_changeset *data_reserved = ((void*)0);
 loff_t offset = iocb->ki_pos;
 size_t count = 0;
 int flags = 0;
 bool wakeup = 1;
 bool relock = 0;
 ssize_t ret;

 if (check_direct_IO(fs_info, iter, offset))
  return 0;

 inode_dio_begin(inode);







 count = iov_iter_count(iter);
 if (test_bit(BTRFS_INODE_HAS_ASYNC_EXTENT,
       &BTRFS_I(inode)->runtime_flags))
  filemap_fdatawrite_range(inode->i_mapping, offset,
      offset + count - 1);

 if (iov_iter_rw(iter) == WRITE) {





  if (offset + count <= inode->i_size) {
   dio_data.overwrite = 1;
   inode_unlock(inode);
   relock = 1;
  } else if (iocb->ki_flags & IOCB_NOWAIT) {
   ret = -EAGAIN;
   goto out;
  }
  ret = btrfs_delalloc_reserve_space(inode, &data_reserved,
         offset, count);
  if (ret)
   goto out;






  dio_data.reserve = round_up(count,
         fs_info->sectorsize);
  dio_data.unsubmitted_oe_range_start = (u64)offset;
  dio_data.unsubmitted_oe_range_end = (u64)offset;
  current->journal_info = &dio_data;
  down_read(&BTRFS_I(inode)->dio_sem);
 } else if (test_bit(BTRFS_INODE_READDIO_NEED_LOCK,
         &BTRFS_I(inode)->runtime_flags)) {
  inode_dio_end(inode);
  flags = DIO_LOCKING | DIO_SKIP_HOLES;
  wakeup = 0;
 }

 ret = __blockdev_direct_IO(iocb, inode,
       fs_info->fs_devices->latest_bdev,
       iter, btrfs_get_blocks_direct, ((void*)0),
       btrfs_submit_direct, flags);
 if (iov_iter_rw(iter) == WRITE) {
  up_read(&BTRFS_I(inode)->dio_sem);
  current->journal_info = ((void*)0);
  if (ret < 0 && ret != -EIOCBQUEUED) {
   if (dio_data.reserve)
    btrfs_delalloc_release_space(inode, data_reserved,
     offset, dio_data.reserve, 1);






   if (dio_data.unsubmitted_oe_range_start <
       dio_data.unsubmitted_oe_range_end)
    __endio_write_update_ordered(inode,
     dio_data.unsubmitted_oe_range_start,
     dio_data.unsubmitted_oe_range_end -
     dio_data.unsubmitted_oe_range_start,
     0);
  } else if (ret >= 0 && (size_t)ret < count)
   btrfs_delalloc_release_space(inode, data_reserved,
     offset, count - (size_t)ret, 1);
  btrfs_delalloc_release_extents(BTRFS_I(inode), count);
 }
out:
 if (wakeup)
  inode_dio_end(inode);
 if (relock)
  inode_lock(inode);

 extent_changeset_free(data_reserved);
 return ret;
}
