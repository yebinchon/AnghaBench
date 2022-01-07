
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void stm32_qspi_dma_callback(void *arg)
{
 struct completion *dma_completion = arg;

 complete(dma_completion);
}
