
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct root_entry {void* roots; int actions; void* refs; scalar_t__ from_disk; scalar_t__ metadata; scalar_t__ num_refs; void* root_objectid; void* len; void* bytenr; } ;
struct btrfs_fs_info {int block_tree; int ref_verify_lock; } ;
struct block_entry {void* roots; int actions; void* refs; scalar_t__ from_disk; scalar_t__ metadata; scalar_t__ num_refs; void* root_objectid; void* len; void* bytenr; } ;


 int ENOMEM ;
 struct root_entry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 struct root_entry* insert_block_entry (int *,struct root_entry*) ;
 struct root_entry* insert_root_entry (void**,struct root_entry*) ;
 int kfree (struct root_entry*) ;
 struct root_entry* kzalloc (int,int ) ;
 int spin_lock (int *) ;

__attribute__((used)) static struct block_entry *add_block_entry(struct btrfs_fs_info *fs_info,
        u64 bytenr, u64 len,
        u64 root_objectid)
{
 struct block_entry *be = ((void*)0), *exist;
 struct root_entry *re = ((void*)0);

 re = kzalloc(sizeof(struct root_entry), GFP_KERNEL);
 be = kzalloc(sizeof(struct block_entry), GFP_KERNEL);
 if (!be || !re) {
  kfree(re);
  kfree(be);
  return ERR_PTR(-ENOMEM);
 }
 be->bytenr = bytenr;
 be->len = len;

 re->root_objectid = root_objectid;
 re->num_refs = 0;

 spin_lock(&fs_info->ref_verify_lock);
 exist = insert_block_entry(&fs_info->block_tree, be);
 if (exist) {
  if (root_objectid) {
   struct root_entry *exist_re;

   exist_re = insert_root_entry(&exist->roots, re);
   if (exist_re)
    kfree(re);
  }
  kfree(be);
  return exist;
 }

 be->num_refs = 0;
 be->metadata = 0;
 be->from_disk = 0;
 be->roots = RB_ROOT;
 be->refs = RB_ROOT;
 INIT_LIST_HEAD(&be->actions);
 if (root_objectid)
  insert_root_entry(&be->roots, re);
 else
  kfree(re);
 return be;
}
