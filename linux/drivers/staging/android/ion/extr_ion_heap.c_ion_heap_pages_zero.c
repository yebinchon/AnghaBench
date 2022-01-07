
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;


 int ion_heap_sglist_zero (struct scatterlist*,int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,size_t,int ) ;

int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot)
{
 struct scatterlist sg;

 sg_init_table(&sg, 1);
 sg_set_page(&sg, page, size, 0);
 return ion_heap_sglist_zero(&sg, 1, pgprot);
}
