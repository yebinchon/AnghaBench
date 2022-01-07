
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_failure_record {int this_mirror; int failed_mirror; int len; int logical; } ;
struct inode {int i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int dummy; } ;


 int btrfs_debug (struct btrfs_fs_info*,char*,int,int,int) ;
 int btrfs_num_copies (struct btrfs_fs_info*,int ,int ) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;

__attribute__((used)) static int btrfs_check_dio_repairable(struct inode *inode,
          struct bio *failed_bio,
          struct io_failure_record *failrec,
          int failed_mirror)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 int num_copies;

 num_copies = btrfs_num_copies(fs_info, failrec->logical, failrec->len);
 if (num_copies == 1) {





  btrfs_debug(fs_info,
   "Check DIO Repairable: cannot repair, num_copies=%d, next_mirror %d, failed_mirror %d",
   num_copies, failrec->this_mirror, failed_mirror);
  return 0;
 }

 failrec->failed_mirror = failed_mirror;
 failrec->this_mirror++;
 if (failrec->this_mirror == failed_mirror)
  failrec->this_mirror++;

 if (failrec->this_mirror > num_copies) {
  btrfs_debug(fs_info,
   "Check DIO Repairable: (fail) num_copies=%d, next_mirror %d, failed_mirror %d",
   num_copies, failrec->this_mirror, failed_mirror);
  return 0;
 }

 return 1;
}
