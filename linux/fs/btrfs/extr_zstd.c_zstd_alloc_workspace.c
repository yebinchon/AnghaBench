
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct workspace {unsigned int level; unsigned int req_level; struct list_head list; struct list_head lru_list; int buf; int mem; int size; int last_used; } ;


 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int PAGE_SIZE ;
 int jiffies ;
 int kmalloc (int ,int ) ;
 int kvmalloc (int ,int ) ;
 struct workspace* kzalloc (int,int ) ;
 int zstd_free_workspace (struct list_head*) ;
 int * zstd_ws_mem_sizes ;

__attribute__((used)) static struct list_head *zstd_alloc_workspace(unsigned int level)
{
 struct workspace *workspace;

 workspace = kzalloc(sizeof(*workspace), GFP_KERNEL);
 if (!workspace)
  return ERR_PTR(-ENOMEM);

 workspace->size = zstd_ws_mem_sizes[level - 1];
 workspace->level = level;
 workspace->req_level = level;
 workspace->last_used = jiffies;
 workspace->mem = kvmalloc(workspace->size, GFP_KERNEL);
 workspace->buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!workspace->mem || !workspace->buf)
  goto fail;

 INIT_LIST_HEAD(&workspace->list);
 INIT_LIST_HEAD(&workspace->lru_list);

 return &workspace->list;
fail:
 zstd_free_workspace(&workspace->list);
 return ERR_PTR(-ENOMEM);
}
