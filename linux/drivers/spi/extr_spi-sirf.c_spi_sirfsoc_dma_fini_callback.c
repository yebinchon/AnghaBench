
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void spi_sirfsoc_dma_fini_callback(void *data)
{
 struct completion *dma_complete = data;

 complete(dma_complete);
}
