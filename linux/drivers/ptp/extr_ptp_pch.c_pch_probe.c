
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct pch_dev {scalar_t__ mem_base; int mem_size; TYPE_2__* regs; int ptp_clock; int register_lock; struct pci_dev* pdev; int irq; int caps; } ;
typedef int s32 ;
struct TYPE_5__ {int event; int trgt_hi; int trgt_lo; int addend; } ;
struct TYPE_4__ {int station; } ;


 int DEFAULT_ADDEND ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IO_MEM_BAR ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PCH_TSE_TTIPEND ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 TYPE_2__* ioremap (scalar_t__,int ) ;
 int iounmap (TYPE_2__*) ;
 int iowrite32 (int,int *) ;
 int isr ;
 int kfree (struct pch_dev*) ;
 struct pch_dev* kzalloc (int,int ) ;
 int pch_eth_enable_set (struct pch_dev*) ;
 TYPE_1__ pch_param ;
 int pch_reset (struct pch_dev*) ;
 scalar_t__ pch_set_station_address (int ,struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pch_dev*) ;
 int ptp_clock_register (int *,int *) ;
 int ptp_clock_unregister (int ) ;
 int ptp_pch_caps ;
 int release_mem_region (scalar_t__,int ) ;
 int request_irq (int ,int *,int ,int ,struct pch_dev*) ;
 int request_mem_region (scalar_t__,int ,char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static s32
pch_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 s32 ret;
 unsigned long flags;
 struct pch_dev *chip;

 chip = kzalloc(sizeof(struct pch_dev), GFP_KERNEL);
 if (chip == ((void*)0))
  return -ENOMEM;


 ret = pci_enable_device(pdev);
 if (ret != 0) {
  dev_err(&pdev->dev, "could not enable the pci device\n");
  goto err_pci_en;
 }

 chip->mem_base = pci_resource_start(pdev, IO_MEM_BAR);
 if (!chip->mem_base) {
  dev_err(&pdev->dev, "could not locate IO memory address\n");
  ret = -ENODEV;
  goto err_pci_start;
 }


 chip->mem_size = pci_resource_len(pdev, IO_MEM_BAR);


 if (!request_mem_region(chip->mem_base, chip->mem_size, "1588_regs")) {
  dev_err(&pdev->dev,
   "could not allocate register memory space\n");
  ret = -EBUSY;
  goto err_req_mem_region;
 }


 chip->regs = ioremap(chip->mem_base, chip->mem_size);

 if (!chip->regs) {
  dev_err(&pdev->dev, "Could not get virtual address\n");
  ret = -ENOMEM;
  goto err_ioremap;
 }

 chip->caps = ptp_pch_caps;
 chip->ptp_clock = ptp_clock_register(&chip->caps, &pdev->dev);
 if (IS_ERR(chip->ptp_clock)) {
  ret = PTR_ERR(chip->ptp_clock);
  goto err_ptp_clock_reg;
 }

 spin_lock_init(&chip->register_lock);

 ret = request_irq(pdev->irq, &isr, IRQF_SHARED, KBUILD_MODNAME, chip);
 if (ret != 0) {
  dev_err(&pdev->dev, "failed to get irq %d\n", pdev->irq);
  goto err_req_irq;
 }


 chip->irq = pdev->irq;
 chip->pdev = pdev;
 pci_set_drvdata(pdev, chip);

 spin_lock_irqsave(&chip->register_lock, flags);

 pch_reset(chip);

 iowrite32(DEFAULT_ADDEND, &chip->regs->addend);
 iowrite32(1, &chip->regs->trgt_lo);
 iowrite32(0, &chip->regs->trgt_hi);
 iowrite32(PCH_TSE_TTIPEND, &chip->regs->event);

 pch_eth_enable_set(chip);

 if (strcmp(pch_param.station, "00:00:00:00:00:00") != 0) {
  if (pch_set_station_address(pch_param.station, pdev) != 0) {
   dev_err(&pdev->dev,
   "Invalid station address parameter\n"
   "Module loaded but station address not set correctly\n"
   );
  }
 }
 spin_unlock_irqrestore(&chip->register_lock, flags);
 return 0;

err_req_irq:
 ptp_clock_unregister(chip->ptp_clock);
err_ptp_clock_reg:
 iounmap(chip->regs);
 chip->regs = ((void*)0);

err_ioremap:
 release_mem_region(chip->mem_base, chip->mem_size);

err_req_mem_region:
 chip->mem_base = 0;

err_pci_start:
 pci_disable_device(pdev);

err_pci_en:
 kfree(chip);
 dev_err(&pdev->dev, "probe failed(ret=0x%x)\n", ret);

 return ret;
}
