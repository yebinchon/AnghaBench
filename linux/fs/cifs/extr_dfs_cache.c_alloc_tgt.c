
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_cache_tgt {int t_list; int t_name; } ;


 int ENOMEM ;
 struct dfs_cache_tgt* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct dfs_cache_tgt*) ;
 struct dfs_cache_tgt* kmalloc (int,int ) ;
 int kstrndup (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline struct dfs_cache_tgt *alloc_tgt(const char *name)
{
 struct dfs_cache_tgt *t;

 t = kmalloc(sizeof(*t), GFP_KERNEL);
 if (!t)
  return ERR_PTR(-ENOMEM);
 t->t_name = kstrndup(name, strlen(name), GFP_KERNEL);
 if (!t->t_name) {
  kfree(t);
  return ERR_PTR(-ENOMEM);
 }
 INIT_LIST_HEAD(&t->t_list);
 return t;
}
