
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_pruss_pdata {scalar_t__ sram_pool; int pintc_base; } ;
struct uio_pruss_dev {unsigned long sram_vaddr; struct uio_pruss_dev* info; int pruss_clk; scalar_t__ sram_pool; scalar_t__ ddr_paddr; int ddr_vaddr; int prussio_vaddr; struct uio_pruss_dev* name; struct uio_pruss_dev* priv; int handler; scalar_t__ hostirq_start; scalar_t__ irq; int version; TYPE_1__* mem; scalar_t__ sram_paddr; int pintc_base; } ;
struct uio_info {unsigned long sram_vaddr; struct uio_info* info; int pruss_clk; scalar_t__ sram_pool; scalar_t__ ddr_paddr; int ddr_vaddr; int prussio_vaddr; struct uio_info* name; struct uio_info* priv; int handler; scalar_t__ hostirq_start; scalar_t__ irq; int version; TYPE_1__* mem; scalar_t__ sram_paddr; int pintc_base; } ;
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {void* memtype; void* size; scalar_t__ addr; } ;


 int DRV_VERSION ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_PRUSS_EVT ;
 int PTR_ERR (int ) ;
 void* UIO_MEM_PHYS ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get (struct device*,char*) ;
 int clk_put (int ) ;
 int dev_err (struct device*,char*) ;
 struct uio_pruss_pdata* dev_get_platdata (struct device*) ;
 int dma_alloc_coherent (struct device*,void*,scalar_t__*,int) ;
 int dma_free_coherent (struct device*,void*,int ,scalar_t__) ;
 void* extram_pool_sz ;
 scalar_t__ gen_pool_dma_alloc (scalar_t__,void*,scalar_t__*) ;
 int gen_pool_free (scalar_t__,unsigned long,void*) ;
 int ioremap (scalar_t__,int) ;
 int iounmap (int ) ;
 struct uio_pruss_dev* kasprintf (int,char*,int) ;
 struct uio_pruss_dev* kcalloc (int,int,int) ;
 int kfree (struct uio_pruss_dev*) ;
 struct uio_pruss_dev* kzalloc (int,int) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uio_pruss_dev*) ;
 int pruss_handler ;
 void* resource_size (struct resource*) ;
 void* sram_pool_sz ;
 int uio_register_device (struct device*,struct uio_pruss_dev*) ;
 int uio_unregister_device (struct uio_pruss_dev*) ;

__attribute__((used)) static int pruss_probe(struct platform_device *pdev)
{
 struct uio_info *p;
 struct uio_pruss_dev *gdev;
 struct resource *regs_prussio;
 struct device *dev = &pdev->dev;
 int ret, cnt, i, len;
 struct uio_pruss_pdata *pdata = dev_get_platdata(dev);

 gdev = kzalloc(sizeof(struct uio_pruss_dev), GFP_KERNEL);
 if (!gdev)
  return -ENOMEM;

 gdev->info = kcalloc(MAX_PRUSS_EVT, sizeof(*p), GFP_KERNEL);
 if (!gdev->info) {
  ret = -ENOMEM;
  goto err_free_gdev;
 }


 gdev->pruss_clk = clk_get(dev, "pruss");
 if (IS_ERR(gdev->pruss_clk)) {
  dev_err(dev, "Failed to get clock\n");
  ret = PTR_ERR(gdev->pruss_clk);
  goto err_free_info;
 }

 ret = clk_enable(gdev->pruss_clk);
 if (ret) {
  dev_err(dev, "Failed to enable clock\n");
  goto err_clk_put;
 }

 regs_prussio = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!regs_prussio) {
  dev_err(dev, "No PRUSS I/O resource specified\n");
  ret = -EIO;
  goto err_clk_disable;
 }

 if (!regs_prussio->start) {
  dev_err(dev, "Invalid memory resource\n");
  ret = -EIO;
  goto err_clk_disable;
 }

 if (pdata->sram_pool) {
  gdev->sram_pool = pdata->sram_pool;
  gdev->sram_vaddr =
   (unsigned long)gen_pool_dma_alloc(gdev->sram_pool,
     sram_pool_sz, &gdev->sram_paddr);
  if (!gdev->sram_vaddr) {
   dev_err(dev, "Could not allocate SRAM pool\n");
   ret = -ENOMEM;
   goto err_clk_disable;
  }
 }

 gdev->ddr_vaddr = dma_alloc_coherent(dev, extram_pool_sz,
    &(gdev->ddr_paddr), GFP_KERNEL | GFP_DMA);
 if (!gdev->ddr_vaddr) {
  dev_err(dev, "Could not allocate external memory\n");
  ret = -ENOMEM;
  goto err_free_sram;
 }

 len = resource_size(regs_prussio);
 gdev->prussio_vaddr = ioremap(regs_prussio->start, len);
 if (!gdev->prussio_vaddr) {
  dev_err(dev, "Can't remap PRUSS I/O  address range\n");
  ret = -ENOMEM;
  goto err_free_ddr_vaddr;
 }

 gdev->pintc_base = pdata->pintc_base;
 gdev->hostirq_start = platform_get_irq(pdev, 0);

 for (cnt = 0, p = gdev->info; cnt < MAX_PRUSS_EVT; cnt++, p++) {
  p->mem[0].addr = regs_prussio->start;
  p->mem[0].size = resource_size(regs_prussio);
  p->mem[0].memtype = UIO_MEM_PHYS;

  p->mem[1].addr = gdev->sram_paddr;
  p->mem[1].size = sram_pool_sz;
  p->mem[1].memtype = UIO_MEM_PHYS;

  p->mem[2].addr = gdev->ddr_paddr;
  p->mem[2].size = extram_pool_sz;
  p->mem[2].memtype = UIO_MEM_PHYS;

  p->name = kasprintf(GFP_KERNEL, "pruss_evt%d", cnt);
  p->version = DRV_VERSION;


  p->irq = gdev->hostirq_start + cnt;
  p->handler = pruss_handler;
  p->priv = gdev;

  ret = uio_register_device(dev, p);
  if (ret < 0) {
   kfree(p->name);
   goto err_unloop;
  }
 }

 platform_set_drvdata(pdev, gdev);
 return 0;

err_unloop:
 for (i = 0, p = gdev->info; i < cnt; i++, p++) {
  uio_unregister_device(p);
  kfree(p->name);
 }
 iounmap(gdev->prussio_vaddr);
err_free_ddr_vaddr:
 dma_free_coherent(dev, extram_pool_sz, gdev->ddr_vaddr,
     gdev->ddr_paddr);
err_free_sram:
 if (pdata->sram_pool)
  gen_pool_free(gdev->sram_pool, gdev->sram_vaddr, sram_pool_sz);
err_clk_disable:
 clk_disable(gdev->pruss_clk);
err_clk_put:
 clk_put(gdev->pruss_clk);
err_free_info:
 kfree(gdev->info);
err_free_gdev:
 kfree(gdev);

 return ret;
}
