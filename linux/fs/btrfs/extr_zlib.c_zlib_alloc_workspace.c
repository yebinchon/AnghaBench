
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int workspace; } ;
struct workspace {unsigned int level; struct list_head list; int buf; TYPE_1__ strm; } ;


 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int MAX_MEM_LEVEL ;
 int MAX_WBITS ;
 int PAGE_SIZE ;
 int kmalloc (int ,int ) ;
 int kvmalloc (int,int ) ;
 struct workspace* kzalloc (int,int ) ;
 int max (int ,int ) ;
 int zlib_deflate_workspacesize (int ,int ) ;
 int zlib_free_workspace (struct list_head*) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static struct list_head *zlib_alloc_workspace(unsigned int level)
{
 struct workspace *workspace;
 int workspacesize;

 workspace = kzalloc(sizeof(*workspace), GFP_KERNEL);
 if (!workspace)
  return ERR_PTR(-ENOMEM);

 workspacesize = max(zlib_deflate_workspacesize(MAX_WBITS, MAX_MEM_LEVEL),
   zlib_inflate_workspacesize());
 workspace->strm.workspace = kvmalloc(workspacesize, GFP_KERNEL);
 workspace->level = level;
 workspace->buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!workspace->strm.workspace || !workspace->buf)
  goto fail;

 INIT_LIST_HEAD(&workspace->list);

 return &workspace->list;
fail:
 zlib_free_workspace(&workspace->list);
 return ERR_PTR(-ENOMEM);
}
