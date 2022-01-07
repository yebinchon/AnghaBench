
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct inode_defrag {int cycled; int last_offset; int transid; int ino; int root; } ;
struct inode {int dummy; } ;
typedef struct inode btrfs_root ;
struct btrfs_key {void* offset; int type; int objectid; } ;
struct btrfs_ioctl_defrag_range_args {int start; void* len; } ;
struct btrfs_fs_info {int subvol_srcu; int sb; } ;
typedef int range ;
struct TYPE_3__ {int runtime_flags; } ;


 int BTRFS_DEFRAG_BATCH ;
 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_IN_DEFRAG ;
 int BTRFS_INODE_ITEM_KEY ;
 int BTRFS_ROOT_ITEM_KEY ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int btrfs_defrag_file (struct inode*,int *,struct btrfs_ioctl_defrag_range_args*,int ,int) ;
 struct inode* btrfs_iget (int ,struct btrfs_key*,struct inode*,int *) ;
 int btrfs_inode_defrag_cachep ;
 struct inode* btrfs_read_fs_root_no_name (struct btrfs_fs_info*,struct btrfs_key*) ;
 int btrfs_requeue_inode_defrag (TYPE_1__*,struct inode_defrag*) ;
 int clear_bit (int ,int *) ;
 int iput (struct inode*) ;
 int kmem_cache_free (int ,struct inode_defrag*) ;
 int memset (struct btrfs_ioctl_defrag_range_args*,int ,int) ;
 int sb_end_write (int ) ;
 int sb_start_write (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static int __btrfs_run_defrag_inode(struct btrfs_fs_info *fs_info,
        struct inode_defrag *defrag)
{
 struct btrfs_root *inode_root;
 struct inode *inode;
 struct btrfs_key key;
 struct btrfs_ioctl_defrag_range_args range;
 int num_defrag;
 int index;
 int ret;


 key.objectid = defrag->root;
 key.type = BTRFS_ROOT_ITEM_KEY;
 key.offset = (u64)-1;

 index = srcu_read_lock(&fs_info->subvol_srcu);

 inode_root = btrfs_read_fs_root_no_name(fs_info, &key);
 if (IS_ERR(inode_root)) {
  ret = PTR_ERR(inode_root);
  goto cleanup;
 }

 key.objectid = defrag->ino;
 key.type = BTRFS_INODE_ITEM_KEY;
 key.offset = 0;
 inode = btrfs_iget(fs_info->sb, &key, inode_root, ((void*)0));
 if (IS_ERR(inode)) {
  ret = PTR_ERR(inode);
  goto cleanup;
 }
 srcu_read_unlock(&fs_info->subvol_srcu, index);


 clear_bit(BTRFS_INODE_IN_DEFRAG, &BTRFS_I(inode)->runtime_flags);
 memset(&range, 0, sizeof(range));
 range.len = (u64)-1;
 range.start = defrag->last_offset;

 sb_start_write(fs_info->sb);
 num_defrag = btrfs_defrag_file(inode, ((void*)0), &range, defrag->transid,
           BTRFS_DEFRAG_BATCH);
 sb_end_write(fs_info->sb);





 if (num_defrag == BTRFS_DEFRAG_BATCH) {
  defrag->last_offset = range.start;
  btrfs_requeue_inode_defrag(BTRFS_I(inode), defrag);
 } else if (defrag->last_offset && !defrag->cycled) {





  defrag->last_offset = 0;
  defrag->cycled = 1;
  btrfs_requeue_inode_defrag(BTRFS_I(inode), defrag);
 } else {
  kmem_cache_free(btrfs_inode_defrag_cachep, defrag);
 }

 iput(inode);
 return 0;
cleanup:
 srcu_read_unlock(&fs_info->subvol_srcu, index);
 kmem_cache_free(btrfs_inode_defrag_cachep, defrag);
 return ret;
}
