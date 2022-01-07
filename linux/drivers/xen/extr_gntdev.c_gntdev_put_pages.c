
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_copy_batch {unsigned int nr_pages; int * pages; } ;


 int put_page (int ) ;

__attribute__((used)) static void gntdev_put_pages(struct gntdev_copy_batch *batch)
{
 unsigned int i;

 for (i = 0; i < batch->nr_pages; i++)
  put_page(batch->pages[i]);
 batch->nr_pages = 0;
}
