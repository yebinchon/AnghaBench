
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int dev; int irq; int revision; } ;
struct jsm_board {int maxports; int membase; unsigned int iobase; int bd_uart_offset; int bd_dividend; void* re_map_membase; int irq; int rev; TYPE_1__* bd_ops; void* membase_end; struct pci_dev* pci_dev; void* iobase_end; int bd_intr_lock; int boardnum; } ;
struct TYPE_3__ {int intr; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT ;
 int IRQF_SHARED ;
 int JSM_DRIVER_NAME ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int ,int ) ;
 int dev_warn (int *,char*,int ) ;
 int free_irq (int ,struct jsm_board*) ;
 void* ioremap (int,int ) ;
 int iounmap (void*) ;
 TYPE_1__ jsm_cls_ops ;
 int jsm_dbg (int ,struct pci_dev**,char*) ;
 TYPE_1__ jsm_neo_ops ;
 int jsm_remove_uart_port (struct jsm_board*) ;
 int jsm_tty_init (struct jsm_board*) ;
 int jsm_uart_port_init (struct jsm_board*) ;
 int kfree (struct jsm_board*) ;
 struct jsm_board* kzalloc (int,int ) ;
 int outb (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 void* pci_resource_end (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct jsm_board*) ;
 int request_irq (int ,int ,int ,char*,struct jsm_board*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int jsm_probe_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int rc = 0;
 struct jsm_board *brd;
 static int adapter_count;

 rc = pci_enable_device(pdev);
 if (rc) {
  dev_err(&pdev->dev, "Device enable FAILED\n");
  goto out;
 }

 rc = pci_request_regions(pdev, JSM_DRIVER_NAME);
 if (rc) {
  dev_err(&pdev->dev, "pci_request_region FAILED\n");
  goto out_disable_device;
 }

 brd = kzalloc(sizeof(*brd), GFP_KERNEL);
 if (!brd) {
  rc = -ENOMEM;
  goto out_release_regions;
 }


 brd->boardnum = adapter_count++;
 brd->pci_dev = pdev;

 switch (pdev->device) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  brd->maxports = 2;
  break;

 case 138:
 case 137:
 case 128:
 case 143:
 case 142:
 case 141:
  brd->maxports = 4;
  break;

 case 136:
 case 135:
 case 134:
 case 140:
 case 139:
  brd->maxports = 8;
  break;

 default:
  brd->maxports = 1;
  break;
 }

 spin_lock_init(&brd->bd_intr_lock);


 brd->rev = pdev->revision;

 brd->irq = pdev->irq;

 switch (pdev->device) {
 case 138:
 case 137:
 case 136:
 case 135:

  jsm_dbg(INIT, &brd->pci_dev,
   "jsm_found_board - Classic adapter\n");
  brd->membase = pci_resource_start(pdev, 4);
  brd->membase_end = pci_resource_end(pdev, 4);

  if (brd->membase & 0x1)
   brd->membase &= ~0x3;
  else
   brd->membase &= ~0xF;

  brd->iobase = pci_resource_start(pdev, 1);
  brd->iobase_end = pci_resource_end(pdev, 1);
  brd->iobase = ((unsigned int)(brd->iobase)) & 0xFFFE;


  brd->bd_ops = &jsm_cls_ops;

  brd->bd_uart_offset = 0x8;
  brd->bd_dividend = 921600;

  brd->re_map_membase = ioremap(brd->membase,
      pci_resource_len(pdev, 4));
  if (!brd->re_map_membase) {
   dev_err(&pdev->dev,
    "Card has no PCI Memory resources, failing board.\n");
   rc = -ENOMEM;
   goto out_kfree_brd;
  }






  outb(0x43, brd->iobase + 0x4c);

  break;

 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 143:
 case 142:
 case 141:
 case 134:
 case 140:
 case 139:

  jsm_dbg(INIT, &brd->pci_dev, "jsm_found_board - NEO adapter\n");


  brd->membase = pci_resource_start(pdev, 0);
  brd->membase_end = pci_resource_end(pdev, 0);

  if (brd->membase & 1)
   brd->membase &= ~0x3;
  else
   brd->membase &= ~0xF;


  brd->bd_ops = &jsm_neo_ops;

  brd->bd_uart_offset = 0x200;
  brd->bd_dividend = 921600;

  brd->re_map_membase = ioremap(brd->membase,
      pci_resource_len(pdev, 0));
  if (!brd->re_map_membase) {
   dev_err(&pdev->dev,
    "Card has no PCI Memory resources, failing board.\n");
   rc = -ENOMEM;
   goto out_kfree_brd;
  }

  break;
 default:
  return -ENXIO;
 }

 rc = request_irq(brd->irq, brd->bd_ops->intr, IRQF_SHARED, "JSM", brd);
 if (rc) {
  dev_warn(&pdev->dev, "Failed to hook IRQ %d\n", brd->irq);
  goto out_iounmap;
 }

 rc = jsm_tty_init(brd);
 if (rc < 0) {
  dev_err(&pdev->dev, "Can't init tty devices (%d)\n", rc);
  rc = -ENXIO;
  goto out_free_irq;
 }

 rc = jsm_uart_port_init(brd);
 if (rc < 0) {

  dev_err(&pdev->dev, "Can't init uart port (%d)\n", rc);
  rc = -ENXIO;
  goto out_free_irq;
 }


 dev_info(&pdev->dev, "board %d: Digi Classic/Neo (rev %d), irq %d\n",
   adapter_count, brd->rev, brd->irq);

 pci_set_drvdata(pdev, brd);
 pci_save_state(pdev);

 return 0;
 out_free_irq:
 jsm_remove_uart_port(brd);
 free_irq(brd->irq, brd);
 out_iounmap:
 iounmap(brd->re_map_membase);
 out_kfree_brd:
 kfree(brd);
 out_release_regions:
 pci_release_regions(pdev);
 out_disable_device:
 pci_disable_device(pdev);
 out:
 return rc;
}
