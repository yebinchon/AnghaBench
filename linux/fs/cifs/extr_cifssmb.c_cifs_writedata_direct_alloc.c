
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct page {int dummy; } ;
struct cifs_writedata {int work; int done; int list; int refcount; struct page** pages; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct cifs_writedata* kzalloc (int,int ) ;

struct cifs_writedata *
cifs_writedata_direct_alloc(struct page **pages, work_func_t complete)
{
 struct cifs_writedata *wdata;

 wdata = kzalloc(sizeof(*wdata), GFP_NOFS);
 if (wdata != ((void*)0)) {
  wdata->pages = pages;
  kref_init(&wdata->refcount);
  INIT_LIST_HEAD(&wdata->list);
  init_completion(&wdata->done);
  INIT_WORK(&wdata->work, complete);
 }
 return wdata;
}
