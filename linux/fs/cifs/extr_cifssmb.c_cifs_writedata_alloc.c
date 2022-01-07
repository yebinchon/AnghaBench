
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct page {int dummy; } ;
struct cifs_writedata {int dummy; } ;


 int GFP_NOFS ;
 struct cifs_writedata* cifs_writedata_direct_alloc (struct page**,int ) ;
 struct page** kcalloc (unsigned int,int,int ) ;

struct cifs_writedata *
cifs_writedata_alloc(unsigned int nr_pages, work_func_t complete)
{
 struct page **pages =
  kcalloc(nr_pages, sizeof(struct page *), GFP_NOFS);
 if (pages)
  return cifs_writedata_direct_alloc(pages, complete);

 return ((void*)0);
}
