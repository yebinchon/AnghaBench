
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_4__ {scalar_t__ base; } ;
struct gasket_driver_desc {TYPE_1__ coherent_buffer_description; } ;
struct TYPE_5__ {scalar_t__ phys_base; int * virt_base; scalar_t__ length_bytes; } ;
struct gasket_dev {TYPE_3__** page_table; TYPE_2__ coherent_buffer; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ num_coherent_pages; int * coherent_pages; } ;


 int EADDRNOTAVAIL ;
 int EFAULT ;
 int dma_free_coherent (int ,scalar_t__,int *,scalar_t__) ;
 int gasket_get_device (struct gasket_dev*) ;
 struct gasket_driver_desc* gasket_get_driver_desc (struct gasket_dev*) ;
 int kfree (int *) ;

int gasket_free_coherent_memory(struct gasket_dev *gasket_dev, u64 size,
    dma_addr_t dma_address, u64 index)
{
 const struct gasket_driver_desc *driver_desc;

 if (!gasket_dev->page_table[index])
  return -EFAULT;

 driver_desc = gasket_get_driver_desc(gasket_dev);

 if (driver_desc->coherent_buffer_description.base != dma_address)
  return -EADDRNOTAVAIL;

 if (gasket_dev->coherent_buffer.length_bytes) {
  dma_free_coherent(gasket_get_device(gasket_dev),
      gasket_dev->coherent_buffer.length_bytes,
      gasket_dev->coherent_buffer.virt_base,
      gasket_dev->coherent_buffer.phys_base);
  gasket_dev->coherent_buffer.length_bytes = 0;
  gasket_dev->coherent_buffer.virt_base = ((void*)0);
  gasket_dev->coherent_buffer.phys_base = 0;
 }

 kfree(gasket_dev->page_table[index]->coherent_pages);
 gasket_dev->page_table[index]->coherent_pages = ((void*)0);
 gasket_dev->page_table[index]->num_coherent_pages = 0;

 return 0;
}
