
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid8250 {int dma_chip; int dma_dev; } ;


 int hsu_dma_remove (int *) ;

__attribute__((used)) static void dnv_exit(struct mid8250 *mid)
{
 if (!mid->dma_dev)
  return;
 hsu_dma_remove(&mid->dma_chip);
}
