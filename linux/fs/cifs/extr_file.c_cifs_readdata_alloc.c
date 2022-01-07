
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct page {int dummy; } ;
struct cifs_readdata {int dummy; } ;


 int GFP_KERNEL ;
 struct cifs_readdata* cifs_readdata_direct_alloc (struct page**,int ) ;
 struct page** kcalloc (unsigned int,int,int ) ;
 int kfree (struct page**) ;

__attribute__((used)) static struct cifs_readdata *
cifs_readdata_alloc(unsigned int nr_pages, work_func_t complete)
{
 struct page **pages =
  kcalloc(nr_pages, sizeof(struct page *), GFP_KERNEL);
 struct cifs_readdata *ret = ((void*)0);

 if (pages) {
  ret = cifs_readdata_direct_alloc(pages, complete);
  if (!ret)
   kfree(pages);
 }

 return ret;
}
