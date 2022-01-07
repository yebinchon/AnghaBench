
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void tegra_spi_dma_complete(void *args)
{
 struct completion *dma_complete = args;

 complete(dma_complete);
}
