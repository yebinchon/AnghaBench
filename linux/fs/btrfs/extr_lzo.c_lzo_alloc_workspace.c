
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct workspace {struct list_head list; void* cbuf; void* buf; void* mem; } ;


 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int LZO1X_MEM_COMPRESS ;
 int PAGE_SIZE ;
 void* kvmalloc (int ,int ) ;
 struct workspace* kzalloc (int,int ) ;
 int lzo1x_worst_compress (int ) ;
 int lzo_free_workspace (struct list_head*) ;

__attribute__((used)) static struct list_head *lzo_alloc_workspace(unsigned int level)
{
 struct workspace *workspace;

 workspace = kzalloc(sizeof(*workspace), GFP_KERNEL);
 if (!workspace)
  return ERR_PTR(-ENOMEM);

 workspace->mem = kvmalloc(LZO1X_MEM_COMPRESS, GFP_KERNEL);
 workspace->buf = kvmalloc(lzo1x_worst_compress(PAGE_SIZE), GFP_KERNEL);
 workspace->cbuf = kvmalloc(lzo1x_worst_compress(PAGE_SIZE), GFP_KERNEL);
 if (!workspace->mem || !workspace->buf || !workspace->cbuf)
  goto fail;

 INIT_LIST_HEAD(&workspace->list);

 return &workspace->list;
fail:
 lzo_free_workspace(&workspace->list);
 return ERR_PTR(-ENOMEM);
}
