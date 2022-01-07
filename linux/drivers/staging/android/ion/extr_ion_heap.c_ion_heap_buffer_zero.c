
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct ion_buffer {int flags; struct sg_table* sg_table; } ;
typedef int pgprot_t ;


 int ION_FLAG_CACHED ;
 int PAGE_KERNEL ;
 int ion_heap_sglist_zero (int ,int ,int ) ;
 int pgprot_writecombine (int ) ;

int ion_heap_buffer_zero(struct ion_buffer *buffer)
{
 struct sg_table *table = buffer->sg_table;
 pgprot_t pgprot;

 if (buffer->flags & ION_FLAG_CACHED)
  pgprot = PAGE_KERNEL;
 else
  pgprot = pgprot_writecombine(PAGE_KERNEL);

 return ion_heap_sglist_zero(table->sgl, table->nents, pgprot);
}
