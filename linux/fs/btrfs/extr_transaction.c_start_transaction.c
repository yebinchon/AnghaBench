
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_transaction {scalar_t__ state; int transid; } ;
struct btrfs_trans_handle {unsigned int type; int can_flush_pending_bgs; int bytes_reserved; int reloc_reserved; struct btrfs_block_rsv* block_rsv; int transid; int new_bgs; struct btrfs_fs_info* fs_info; int use_count; struct btrfs_root* root; struct btrfs_transaction* transaction; struct btrfs_block_rsv* orig_rsv; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {scalar_t__ full; } ;
struct btrfs_fs_info {unsigned int nodesize; struct btrfs_block_rsv trans_block_rsv; int sb; struct btrfs_transaction* running_transaction; struct btrfs_root* chunk_root; int fs_state; struct btrfs_block_rsv delayed_refs_rsv; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;


 int ASSERT (int) ;
 int BTRFS_FS_STATE_ERROR ;
 int BTRFS_RESERVE_FLUSH_ALL ;
 struct btrfs_trans_handle* BTRFS_SEND_TRANS_STUB ;
 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int EROFS ;
 struct btrfs_trans_handle* ERR_PTR (int) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int TRANS_ATTACH ;
 unsigned int TRANS_EXTWRITERS ;
 unsigned int TRANS_JOIN_NOSTART ;
 scalar_t__ TRANS_STATE_BLOCKED ;
 int WARN_ON (int) ;
 unsigned int __TRANS_FREEZABLE ;
 int btrfs_block_rsv_add (struct btrfs_root*,struct btrfs_block_rsv*,int,int) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int) ;
 int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,unsigned int) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_delayed_refs_rsv_refill (struct btrfs_fs_info*,int) ;
 int btrfs_migrate_to_delayed_refs_rsv (struct btrfs_fs_info*,struct btrfs_block_rsv*,int) ;
 int btrfs_qgroup_free_meta_pertrans (struct btrfs_root*,int) ;
 int btrfs_qgroup_reserve_meta_pertrans (struct btrfs_root*,int,int) ;
 int btrfs_record_root_in_trans (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_trans_handle_cachep ;
 TYPE_1__* current ;
 int join_transaction (struct btrfs_fs_info*,unsigned int) ;
 int kmem_cache_free (int ,struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* kmem_cache_zalloc (int ,int ) ;
 scalar_t__ may_wait_transaction (struct btrfs_fs_info*,unsigned int) ;
 scalar_t__ need_reserve_reloc_root (struct btrfs_root*) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;
 int refcount_set (int *,int) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int smp_mb () ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,int,int) ;
 scalar_t__ unlikely (int) ;
 int wait_current_trans (struct btrfs_fs_info*) ;

__attribute__((used)) static struct btrfs_trans_handle *
start_transaction(struct btrfs_root *root, unsigned int num_items,
    unsigned int type, enum btrfs_reserve_flush_enum flush,
    bool enforce_qgroups)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_block_rsv *delayed_refs_rsv = &fs_info->delayed_refs_rsv;
 struct btrfs_trans_handle *h;
 struct btrfs_transaction *cur_trans;
 u64 num_bytes = 0;
 u64 qgroup_reserved = 0;
 bool reloc_reserved = 0;
 int ret;


 ASSERT(current->journal_info != BTRFS_SEND_TRANS_STUB);

 if (test_bit(BTRFS_FS_STATE_ERROR, &fs_info->fs_state))
  return ERR_PTR(-EROFS);

 if (current->journal_info) {
  WARN_ON(type & TRANS_EXTWRITERS);
  h = current->journal_info;
  refcount_inc(&h->use_count);
  WARN_ON(refcount_read(&h->use_count) > 2);
  h->orig_rsv = h->block_rsv;
  h->block_rsv = ((void*)0);
  goto got_it;
 }





 if (num_items && root != fs_info->chunk_root) {
  struct btrfs_block_rsv *rsv = &fs_info->trans_block_rsv;
  u64 delayed_refs_bytes = 0;

  qgroup_reserved = num_items * fs_info->nodesize;
  ret = btrfs_qgroup_reserve_meta_pertrans(root, qgroup_reserved,
    enforce_qgroups);
  if (ret)
   return ERR_PTR(ret);
  num_bytes = btrfs_calc_insert_metadata_size(fs_info, num_items);
  if (delayed_refs_rsv->full == 0) {
   delayed_refs_bytes = num_bytes;
   num_bytes <<= 1;
  }




  if (need_reserve_reloc_root(root)) {
   num_bytes += fs_info->nodesize;
   reloc_reserved = 1;
  }

  ret = btrfs_block_rsv_add(root, rsv, num_bytes, flush);
  if (ret)
   goto reserve_fail;
  if (delayed_refs_bytes) {
   btrfs_migrate_to_delayed_refs_rsv(fs_info, rsv,
         delayed_refs_bytes);
   num_bytes -= delayed_refs_bytes;
  }
 } else if (num_items == 0 && flush == BTRFS_RESERVE_FLUSH_ALL &&
     !delayed_refs_rsv->full) {







  ret = btrfs_delayed_refs_rsv_refill(fs_info, flush);
  if (ret)
   goto reserve_fail;
 }
again:
 h = kmem_cache_zalloc(btrfs_trans_handle_cachep, GFP_NOFS);
 if (!h) {
  ret = -ENOMEM;
  goto alloc_fail;
 }
 if (type & __TRANS_FREEZABLE)
  sb_start_intwrite(fs_info->sb);

 if (may_wait_transaction(fs_info, type))
  wait_current_trans(fs_info);

 do {
  ret = join_transaction(fs_info, type);
  if (ret == -EBUSY) {
   wait_current_trans(fs_info);
   if (unlikely(type == TRANS_ATTACH ||
         type == TRANS_JOIN_NOSTART))
    ret = -ENOENT;
  }
 } while (ret == -EBUSY);

 if (ret < 0)
  goto join_fail;

 cur_trans = fs_info->running_transaction;

 h->transid = cur_trans->transid;
 h->transaction = cur_trans;
 h->root = root;
 refcount_set(&h->use_count, 1);
 h->fs_info = root->fs_info;

 h->type = type;
 h->can_flush_pending_bgs = 1;
 INIT_LIST_HEAD(&h->new_bgs);

 smp_mb();
 if (cur_trans->state >= TRANS_STATE_BLOCKED &&
     may_wait_transaction(fs_info, type)) {
  current->journal_info = h;
  btrfs_commit_transaction(h);
  goto again;
 }

 if (num_bytes) {
  trace_btrfs_space_reservation(fs_info, "transaction",
           h->transid, num_bytes, 1);
  h->block_rsv = &fs_info->trans_block_rsv;
  h->bytes_reserved = num_bytes;
  h->reloc_reserved = reloc_reserved;
 }

got_it:
 btrfs_record_root_in_trans(h, root);

 if (!current->journal_info)
  current->journal_info = h;
 return h;

join_fail:
 if (type & __TRANS_FREEZABLE)
  sb_end_intwrite(fs_info->sb);
 kmem_cache_free(btrfs_trans_handle_cachep, h);
alloc_fail:
 if (num_bytes)
  btrfs_block_rsv_release(fs_info, &fs_info->trans_block_rsv,
     num_bytes);
reserve_fail:
 btrfs_qgroup_free_meta_pertrans(root, qgroup_reserved);
 return ERR_PTR(ret);
}
