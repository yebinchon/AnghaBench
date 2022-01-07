
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct page {int dummy; } ;
struct cifs_readdata {int work; int done; int list; int refcount; struct page** pages; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct cifs_readdata* kzalloc (int,int ) ;

__attribute__((used)) static struct cifs_readdata *
cifs_readdata_direct_alloc(struct page **pages, work_func_t complete)
{
 struct cifs_readdata *rdata;

 rdata = kzalloc(sizeof(*rdata), GFP_KERNEL);
 if (rdata != ((void*)0)) {
  rdata->pages = pages;
  kref_init(&rdata->refcount);
  INIT_LIST_HEAD(&rdata->list);
  init_completion(&rdata->done);
  INIT_WORK(&rdata->work, complete);
 }

 return rdata;
}
