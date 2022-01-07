
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct send_ctx {scalar_t__ send_progress; int parent_root; int send_root; } ;
struct name_cache_entry {int need_later_update; scalar_t__ parent_ino; scalar_t__ parent_gen; int ret; int name; scalar_t__ name_len; scalar_t__ gen; scalar_t__ ino; } ;
struct fs_path {scalar_t__ start; scalar_t__ end; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int did_overwrite_ref (struct send_ctx*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int fs_path_add (struct fs_path*,int ,scalar_t__) ;
 scalar_t__ fs_path_len (struct fs_path*) ;
 int fs_path_reset (struct fs_path*) ;
 int gen_unique_name (struct send_ctx*,scalar_t__,scalar_t__,struct fs_path*) ;
 int get_first_ref (int ,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ;
 int is_inode_existent (struct send_ctx*,scalar_t__,scalar_t__) ;
 int kfree (struct name_cache_entry*) ;
 struct name_cache_entry* kmalloc (scalar_t__,int ) ;
 int name_cache_clean_unused (struct send_ctx*) ;
 int name_cache_delete (struct send_ctx*,struct name_cache_entry*) ;
 int name_cache_insert (struct send_ctx*,struct name_cache_entry*) ;
 struct name_cache_entry* name_cache_search (struct send_ctx*,scalar_t__,scalar_t__) ;
 int name_cache_used (struct send_ctx*,struct name_cache_entry*) ;
 int strcpy (int ,scalar_t__) ;

__attribute__((used)) static int __get_cur_name_and_parent(struct send_ctx *sctx,
         u64 ino, u64 gen,
         u64 *parent_ino,
         u64 *parent_gen,
         struct fs_path *dest)
{
 int ret;
 int nce_ret;
 struct name_cache_entry *nce = ((void*)0);






 nce = name_cache_search(sctx, ino, gen);
 if (nce) {
  if (ino < sctx->send_progress && nce->need_later_update) {
   name_cache_delete(sctx, nce);
   kfree(nce);
   nce = ((void*)0);
  } else {
   name_cache_used(sctx, nce);
   *parent_ino = nce->parent_ino;
   *parent_gen = nce->parent_gen;
   ret = fs_path_add(dest, nce->name, nce->name_len);
   if (ret < 0)
    goto out;
   ret = nce->ret;
   goto out;
  }
 }






 ret = is_inode_existent(sctx, ino, gen);
 if (ret < 0)
  goto out;

 if (!ret) {
  ret = gen_unique_name(sctx, ino, gen, dest);
  if (ret < 0)
   goto out;
  ret = 1;
  goto out_cache;
 }





 if (ino < sctx->send_progress)
  ret = get_first_ref(sctx->send_root, ino,
        parent_ino, parent_gen, dest);
 else
  ret = get_first_ref(sctx->parent_root, ino,
        parent_ino, parent_gen, dest);
 if (ret < 0)
  goto out;





 ret = did_overwrite_ref(sctx, *parent_ino, *parent_gen, ino, gen,
   dest->start, dest->end - dest->start);
 if (ret < 0)
  goto out;
 if (ret) {
  fs_path_reset(dest);
  ret = gen_unique_name(sctx, ino, gen, dest);
  if (ret < 0)
   goto out;
  ret = 1;
 }

out_cache:



 nce = kmalloc(sizeof(*nce) + fs_path_len(dest) + 1, GFP_KERNEL);
 if (!nce) {
  ret = -ENOMEM;
  goto out;
 }

 nce->ino = ino;
 nce->gen = gen;
 nce->parent_ino = *parent_ino;
 nce->parent_gen = *parent_gen;
 nce->name_len = fs_path_len(dest);
 nce->ret = ret;
 strcpy(nce->name, dest->start);

 if (ino < sctx->send_progress)
  nce->need_later_update = 0;
 else
  nce->need_later_update = 1;

 nce_ret = name_cache_insert(sctx, nce);
 if (nce_ret < 0)
  ret = nce_ret;
 name_cache_clean_unused(sctx);

out:
 return ret;
}
