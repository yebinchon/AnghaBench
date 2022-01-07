
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pruss_dev {int pruss_clk; struct uio_pruss_dev* info; scalar_t__ sram_vaddr; int sram_pool; int ddr_paddr; scalar_t__ ddr_vaddr; int prussio_vaddr; struct uio_pruss_dev* name; } ;
struct uio_info {int pruss_clk; struct uio_info* info; scalar_t__ sram_vaddr; int sram_pool; int ddr_paddr; scalar_t__ ddr_vaddr; int prussio_vaddr; struct uio_info* name; } ;
struct device {int dummy; } ;


 int MAX_PRUSS_EVT ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int dma_free_coherent (struct device*,int ,scalar_t__,int ) ;
 int extram_pool_sz ;
 int gen_pool_free (int ,scalar_t__,int ) ;
 int iounmap (int ) ;
 int kfree (struct uio_pruss_dev*) ;
 int sram_pool_sz ;
 int uio_unregister_device (struct uio_pruss_dev*) ;

__attribute__((used)) static void pruss_cleanup(struct device *dev, struct uio_pruss_dev *gdev)
{
 int cnt;
 struct uio_info *p = gdev->info;

 for (cnt = 0; cnt < MAX_PRUSS_EVT; cnt++, p++) {
  uio_unregister_device(p);
  kfree(p->name);
 }
 iounmap(gdev->prussio_vaddr);
 if (gdev->ddr_vaddr) {
  dma_free_coherent(dev, extram_pool_sz, gdev->ddr_vaddr,
   gdev->ddr_paddr);
 }
 if (gdev->sram_vaddr)
  gen_pool_free(gdev->sram_pool,
         gdev->sram_vaddr,
         sram_pool_sz);
 kfree(gdev->info);
 clk_disable(gdev->pruss_clk);
 clk_put(gdev->pruss_clk);
 kfree(gdev);
}
