
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_2__ {scalar_t__ phys_base; int * virt_base; scalar_t__ length_bytes; } ;
struct gasket_dev {TYPE_1__ coherent_buffer; int * page_table; } ;


 int dma_free_coherent (int ,scalar_t__,int *,scalar_t__) ;
 int gasket_get_device (struct gasket_dev*) ;

void gasket_free_coherent_memory_all(struct gasket_dev *gasket_dev, u64 index)
{
 if (!gasket_dev->page_table[index])
  return;

 if (gasket_dev->coherent_buffer.length_bytes) {
  dma_free_coherent(gasket_get_device(gasket_dev),
      gasket_dev->coherent_buffer.length_bytes,
      gasket_dev->coherent_buffer.virt_base,
      gasket_dev->coherent_buffer.phys_base);
  gasket_dev->coherent_buffer.length_bytes = 0;
  gasket_dev->coherent_buffer.virt_base = ((void*)0);
  gasket_dev->coherent_buffer.phys_base = 0;
 }
}
