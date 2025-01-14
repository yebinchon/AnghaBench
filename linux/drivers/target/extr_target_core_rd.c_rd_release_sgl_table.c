
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct scatterlist {size_t rd_sg_count; struct scatterlist* sg_table; } ;
struct rd_dev_sg_table {size_t rd_sg_count; struct rd_dev_sg_table* sg_table; } ;
struct rd_dev {int dummy; } ;
struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int kfree (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;

__attribute__((used)) static u32 rd_release_sgl_table(struct rd_dev *rd_dev, struct rd_dev_sg_table *sg_table,
     u32 sg_table_count)
{
 struct page *pg;
 struct scatterlist *sg;
 u32 i, j, page_count = 0, sg_per_table;

 for (i = 0; i < sg_table_count; i++) {
  sg = sg_table[i].sg_table;
  sg_per_table = sg_table[i].rd_sg_count;

  for (j = 0; j < sg_per_table; j++) {
   pg = sg_page(&sg[j]);
   if (pg) {
    __free_page(pg);
    page_count++;
   }
  }
  kfree(sg);
 }

 kfree(sg_table);
 return page_count;
}
