
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {scalar_t__ dma_regs; } ;


 int vdma_disable (int) ;

__attribute__((used)) static void jazz_esp_dma_invalidate(struct esp *esp)
{
 vdma_disable ((int)esp->dma_regs);
}
