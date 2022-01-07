
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_6__ {void* base; } ;
struct gasket_driver_desc {TYPE_1__ coherent_buffer_description; } ;
struct TYPE_7__ {unsigned int length_bytes; void* phys_base; int * virt_base; } ;
struct gasket_dev {TYPE_3__** page_table; TYPE_2__ coherent_buffer; } ;
typedef void* dma_addr_t ;
struct TYPE_9__ {size_t kernel_virt; void* paddr; } ;
struct TYPE_8__ {unsigned int num_coherent_pages; TYPE_4__* coherent_pages; } ;


 unsigned int DIV_ROUND_UP (size_t,unsigned int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 void* dma_alloc_coherent (int ,unsigned int,void**,int ) ;
 int dma_free_coherent (int ,unsigned int,void*,void*) ;
 int gasket_get_device (struct gasket_dev*) ;
 struct gasket_driver_desc* gasket_get_driver_desc (struct gasket_dev*) ;
 TYPE_4__* kcalloc (unsigned int,int,int ) ;
 int kfree (TYPE_4__*) ;

int gasket_alloc_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
     dma_addr_t *dma_address, u64 index)
{
 dma_addr_t handle;
 void *mem;
 int j;
 unsigned int num_pages = DIV_ROUND_UP(size, PAGE_SIZE);
 const struct gasket_driver_desc *driver_desc =
  gasket_get_driver_desc(gasket_dev);

 if (!gasket_dev->page_table[index])
  return -EFAULT;

 if (num_pages == 0)
  return -EINVAL;

 mem = dma_alloc_coherent(gasket_get_device(gasket_dev),
     num_pages * PAGE_SIZE, &handle, GFP_KERNEL);
 if (!mem)
  goto nomem;

 gasket_dev->page_table[index]->num_coherent_pages = num_pages;


 gasket_dev->page_table[index]->coherent_pages =
  kcalloc(num_pages,
   sizeof(*gasket_dev->page_table[index]->coherent_pages),
   GFP_KERNEL);
 if (!gasket_dev->page_table[index]->coherent_pages)
  goto nomem;

 gasket_dev->coherent_buffer.length_bytes =
  PAGE_SIZE * (num_pages);
 gasket_dev->coherent_buffer.phys_base = handle;
 gasket_dev->coherent_buffer.virt_base = mem;

 *dma_address = driver_desc->coherent_buffer_description.base;
 for (j = 0; j < num_pages; j++) {
  gasket_dev->page_table[index]->coherent_pages[j].paddr =
   handle + j * PAGE_SIZE;
  gasket_dev->page_table[index]->coherent_pages[j].kernel_virt =
   (u64)mem + j * PAGE_SIZE;
 }

 return 0;

nomem:
 if (mem) {
  dma_free_coherent(gasket_get_device(gasket_dev),
      num_pages * PAGE_SIZE, mem, handle);
  gasket_dev->coherent_buffer.length_bytes = 0;
  gasket_dev->coherent_buffer.virt_base = ((void*)0);
  gasket_dev->coherent_buffer.phys_base = 0;
 }

 kfree(gasket_dev->page_table[index]->coherent_pages);
 gasket_dev->page_table[index]->coherent_pages = ((void*)0);
 gasket_dev->page_table[index]->num_coherent_pages = 0;
 return -ENOMEM;
}
