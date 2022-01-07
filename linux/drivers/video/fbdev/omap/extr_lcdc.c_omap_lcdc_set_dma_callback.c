
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* dma_callback ) (void*) ;void* dma_callback_data; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 TYPE_1__ lcdc ;

int omap_lcdc_set_dma_callback(void (*callback)(void *data), void *data)
{
 BUG_ON(callback == ((void*)0));

 if (lcdc.dma_callback)
  return -EBUSY;
 else {
  lcdc.dma_callback = callback;
  lcdc.dma_callback_data = data;
 }
 return 0;
}
