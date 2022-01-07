
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int i_rdev; int i_nlink; int i_mode; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_inode_item {int otime; int ctime; int mtime; int atime; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {TYPE_4__ i_otime; int flags; int generation; int disk_i_size; } ;


 TYPE_5__* BTRFS_I (struct inode*) ;
 int btrfs_set_stack_inode_block_group (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_flags (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_generation (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_gid (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_mode (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_nbytes (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_nlink (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_rdev (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_sequence (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_size (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_transid (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_inode_uid (struct btrfs_inode_item*,int ) ;
 int btrfs_set_stack_timespec_nsec (int *,int ) ;
 int btrfs_set_stack_timespec_sec (int *,int ) ;
 int i_gid_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int inode_get_bytes (struct inode*) ;
 int inode_peek_iversion (struct inode*) ;

__attribute__((used)) static void fill_stack_inode_item(struct btrfs_trans_handle *trans,
      struct btrfs_inode_item *inode_item,
      struct inode *inode)
{
 btrfs_set_stack_inode_uid(inode_item, i_uid_read(inode));
 btrfs_set_stack_inode_gid(inode_item, i_gid_read(inode));
 btrfs_set_stack_inode_size(inode_item, BTRFS_I(inode)->disk_i_size);
 btrfs_set_stack_inode_mode(inode_item, inode->i_mode);
 btrfs_set_stack_inode_nlink(inode_item, inode->i_nlink);
 btrfs_set_stack_inode_nbytes(inode_item, inode_get_bytes(inode));
 btrfs_set_stack_inode_generation(inode_item,
      BTRFS_I(inode)->generation);
 btrfs_set_stack_inode_sequence(inode_item,
           inode_peek_iversion(inode));
 btrfs_set_stack_inode_transid(inode_item, trans->transid);
 btrfs_set_stack_inode_rdev(inode_item, inode->i_rdev);
 btrfs_set_stack_inode_flags(inode_item, BTRFS_I(inode)->flags);
 btrfs_set_stack_inode_block_group(inode_item, 0);

 btrfs_set_stack_timespec_sec(&inode_item->atime,
         inode->i_atime.tv_sec);
 btrfs_set_stack_timespec_nsec(&inode_item->atime,
          inode->i_atime.tv_nsec);

 btrfs_set_stack_timespec_sec(&inode_item->mtime,
         inode->i_mtime.tv_sec);
 btrfs_set_stack_timespec_nsec(&inode_item->mtime,
          inode->i_mtime.tv_nsec);

 btrfs_set_stack_timespec_sec(&inode_item->ctime,
         inode->i_ctime.tv_sec);
 btrfs_set_stack_timespec_nsec(&inode_item->ctime,
          inode->i_ctime.tv_nsec);

 btrfs_set_stack_timespec_sec(&inode_item->otime,
         BTRFS_I(inode)->i_otime.tv_sec);
 btrfs_set_stack_timespec_nsec(&inode_item->otime,
         BTRFS_I(inode)->i_otime.tv_nsec);
}
