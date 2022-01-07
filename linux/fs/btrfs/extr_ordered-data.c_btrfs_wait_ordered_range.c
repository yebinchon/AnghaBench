
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_mapping; } ;
struct btrfs_ordered_extent {scalar_t__ file_offset; scalar_t__ len; int flags; } ;


 int BTRFS_ORDERED_IOERR ;
 int EIO ;
 scalar_t__ INT_LIMIT (int ) ;
 int btrfs_fdatawrite_range (struct inode*,scalar_t__,scalar_t__) ;
 struct btrfs_ordered_extent* btrfs_lookup_first_ordered_extent (struct inode*,scalar_t__) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_start_ordered_extent (struct inode*,struct btrfs_ordered_extent*,int) ;
 int filemap_fdatawait_range (int ,scalar_t__,scalar_t__) ;
 int loff_t ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_wait_ordered_range(struct inode *inode, u64 start, u64 len)
{
 int ret = 0;
 int ret_wb = 0;
 u64 end;
 u64 orig_end;
 struct btrfs_ordered_extent *ordered;

 if (start + len < start) {
  orig_end = INT_LIMIT(loff_t);
 } else {
  orig_end = start + len - 1;
  if (orig_end > INT_LIMIT(loff_t))
   orig_end = INT_LIMIT(loff_t);
 }




 ret = btrfs_fdatawrite_range(inode, start, orig_end);
 if (ret)
  return ret;
 ret_wb = filemap_fdatawait_range(inode->i_mapping, start, orig_end);

 end = orig_end;
 while (1) {
  ordered = btrfs_lookup_first_ordered_extent(inode, end);
  if (!ordered)
   break;
  if (ordered->file_offset > orig_end) {
   btrfs_put_ordered_extent(ordered);
   break;
  }
  if (ordered->file_offset + ordered->len <= start) {
   btrfs_put_ordered_extent(ordered);
   break;
  }
  btrfs_start_ordered_extent(inode, ordered, 1);
  end = ordered->file_offset;
  if (test_bit(BTRFS_ORDERED_IOERR, &ordered->flags))
   ret = -EIO;
  btrfs_put_ordered_extent(ordered);
  if (ret || end == 0 || end == start)
   break;
  end--;
 }
 return ret_wb ? ret_wb : ret;
}
