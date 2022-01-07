
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ref_entry {scalar_t__ num_refs; int parent; } ;
struct btrfs_fs_info {int ref_verify_lock; } ;
struct block_entry {int refs; int num_refs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct block_entry*) ;
 int PTR_ERR (struct block_entry*) ;
 struct block_entry* add_block_entry (struct btrfs_fs_info*,int ,int ,int ) ;
 int btrfs_err (struct btrfs_fs_info*,char*) ;
 scalar_t__ insert_ref_entry (int *,struct ref_entry*) ;
 int kfree (struct ref_entry*) ;
 struct ref_entry* kzalloc (int,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int add_shared_data_ref(struct btrfs_fs_info *fs_info,
          u64 parent, u32 num_refs, u64 bytenr,
          u64 num_bytes)
{
 struct block_entry *be;
 struct ref_entry *ref;

 ref = kzalloc(sizeof(struct ref_entry), GFP_KERNEL);
 if (!ref)
  return -ENOMEM;
 be = add_block_entry(fs_info, bytenr, num_bytes, 0);
 if (IS_ERR(be)) {
  kfree(ref);
  return PTR_ERR(be);
 }
 be->num_refs += num_refs;

 ref->parent = parent;
 ref->num_refs = num_refs;
 if (insert_ref_entry(&be->refs, ref)) {
  spin_unlock(&fs_info->ref_verify_lock);
  btrfs_err(fs_info, "existing shared ref when reading from disk?");
  kfree(ref);
  return -EINVAL;
 }
 spin_unlock(&fs_info->ref_verify_lock);
 return 0;
}
