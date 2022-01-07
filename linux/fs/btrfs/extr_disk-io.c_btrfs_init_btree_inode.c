
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; int i_size; int i_ino; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int tree_root; struct inode* btree_inode; } ;
struct TYPE_5__ {int track_uptodate; int * ops; } ;
struct TYPE_6__ {int runtime_flags; int location; int root; TYPE_2__ io_tree; int extent_tree; int rb_node; } ;
struct TYPE_4__ {int * a_ops; } ;


 int BTRFS_BTREE_INODE_OBJECTID ;
 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_DUMMY ;
 int IO_TREE_INODE_IO ;
 int OFFSET_MAX ;
 int RB_CLEAR_NODE (int *) ;
 int btree_aops ;
 int btree_extent_io_ops ;
 int btrfs_insert_inode_hash (struct inode*) ;
 int extent_io_tree_init (struct btrfs_fs_info*,TYPE_2__*,int ,struct inode*) ;
 int extent_map_tree_init (int *) ;
 int memset (int *,int ,int) ;
 int set_bit (int ,int *) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static void btrfs_init_btree_inode(struct btrfs_fs_info *fs_info)
{
 struct inode *inode = fs_info->btree_inode;

 inode->i_ino = BTRFS_BTREE_INODE_OBJECTID;
 set_nlink(inode, 1);





 inode->i_size = OFFSET_MAX;
 inode->i_mapping->a_ops = &btree_aops;

 RB_CLEAR_NODE(&BTRFS_I(inode)->rb_node);
 extent_io_tree_init(fs_info, &BTRFS_I(inode)->io_tree,
       IO_TREE_INODE_IO, inode);
 BTRFS_I(inode)->io_tree.track_uptodate = 0;
 extent_map_tree_init(&BTRFS_I(inode)->extent_tree);

 BTRFS_I(inode)->io_tree.ops = &btree_extent_io_ops;

 BTRFS_I(inode)->root = fs_info->tree_root;
 memset(&BTRFS_I(inode)->location, 0, sizeof(struct btrfs_key));
 set_bit(BTRFS_INODE_DUMMY, &BTRFS_I(inode)->runtime_flags);
 btrfs_insert_inode_hash(inode);
}
