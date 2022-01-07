
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ops; } ;
struct port {int fifo_ul; TYPE_1__ port; struct nozomi* dc; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct nozomi {int index_start; int base_addr; struct nozomi* send_buf; struct port* port; int state; int reg_ier; scalar_t__ last_ier; int spin_mutex; int card_type; struct pci_dev* pdev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct nozomi**) ;
 int DBG1 (char*,int ) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int FIFO_BUFFER_SIZE_UL ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct device*) ;
 int MAX_PORT ;
 int NOZOMI_NAME ;
 int NOZOMI_STATE_ENABLED ;
 int PORT_MDM ;
 int PTR_ERR (struct device*) ;
 scalar_t__ RESET ;
 int SEND_BUF_MAX ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int interrupt_handler ;
 int iounmap (int ) ;
 int iowrite16 (scalar_t__,int ) ;
 scalar_t__ kfifo_alloc (int *,int ,int ) ;
 int kfifo_free (int *) ;
 int kfree (struct nozomi*) ;
 struct nozomi* kmalloc (int ,int ) ;
 struct nozomi* kzalloc (int,int ) ;
 int make_sysfs_files (struct nozomi*) ;
 struct nozomi** ndevs ;
 int noz_tty_port_ops ;
 int nozomi_get_card_type (struct nozomi*) ;
 int nozomi_setup_private_data (struct nozomi*) ;
 int ntty_driver ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct nozomi*) ;
 int request_irq (int ,int *,int ,int ,struct nozomi*) ;
 int spin_lock_init (int *) ;
 int tty_port_destroy (TYPE_1__*) ;
 int tty_port_init (TYPE_1__*) ;
 struct device* tty_port_register_device (TYPE_1__*,int ,int,int *) ;
 int tty_unregister_device (int ,int) ;
 scalar_t__ unlikely (int) ;
 int writew (scalar_t__,int ) ;

__attribute__((used)) static int nozomi_card_init(struct pci_dev *pdev,
          const struct pci_device_id *ent)
{
 int ret;
 struct nozomi *dc = ((void*)0);
 int ndev_idx;
 int i;

 dev_dbg(&pdev->dev, "Init, new card found\n");

 for (ndev_idx = 0; ndev_idx < ARRAY_SIZE(ndevs); ndev_idx++)
  if (!ndevs[ndev_idx])
   break;

 if (ndev_idx >= ARRAY_SIZE(ndevs)) {
  dev_err(&pdev->dev, "no free tty range for this card left\n");
  ret = -EIO;
  goto err;
 }

 dc = kzalloc(sizeof(struct nozomi), GFP_KERNEL);
 if (unlikely(!dc)) {
  dev_err(&pdev->dev, "Could not allocate memory\n");
  ret = -ENOMEM;
  goto err_free;
 }

 dc->pdev = pdev;

 ret = pci_enable_device(dc->pdev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to enable PCI Device\n");
  goto err_free;
 }

 ret = pci_request_regions(dc->pdev, NOZOMI_NAME);
 if (ret) {
  dev_err(&pdev->dev, "I/O address 0x%04x already in use\n",
   (int) 0);
  goto err_disable_device;
 }


 nozomi_get_card_type(dc);

 dc->base_addr = pci_iomap(dc->pdev, 0, dc->card_type);
 if (!dc->base_addr) {
  dev_err(&pdev->dev, "Unable to map card MMIO\n");
  ret = -ENODEV;
  goto err_rel_regs;
 }

 dc->send_buf = kmalloc(SEND_BUF_MAX, GFP_KERNEL);
 if (!dc->send_buf) {
  dev_err(&pdev->dev, "Could not allocate send buffer?\n");
  ret = -ENOMEM;
  goto err_free_sbuf;
 }

 for (i = PORT_MDM; i < MAX_PORT; i++) {
  if (kfifo_alloc(&dc->port[i].fifo_ul, FIFO_BUFFER_SIZE_UL,
     GFP_KERNEL)) {
   dev_err(&pdev->dev,
     "Could not allocate kfifo buffer\n");
   ret = -ENOMEM;
   goto err_free_kfifo;
  }
 }

 spin_lock_init(&dc->spin_mutex);

 nozomi_setup_private_data(dc);


 dc->last_ier = 0;
 writew(dc->last_ier, dc->reg_ier);

 ret = request_irq(pdev->irq, &interrupt_handler, IRQF_SHARED,
   NOZOMI_NAME, dc);
 if (unlikely(ret)) {
  dev_err(&pdev->dev, "can't request irq %d\n", pdev->irq);
  goto err_free_kfifo;
 }

 DBG1("base_addr: %p", dc->base_addr);

 make_sysfs_files(dc);

 dc->index_start = ndev_idx * MAX_PORT;
 ndevs[ndev_idx] = dc;

 pci_set_drvdata(pdev, dc);


 dc->last_ier = RESET;
 iowrite16(dc->last_ier, dc->reg_ier);

 dc->state = NOZOMI_STATE_ENABLED;

 for (i = 0; i < MAX_PORT; i++) {
  struct device *tty_dev;
  struct port *port = &dc->port[i];
  port->dc = dc;
  tty_port_init(&port->port);
  port->port.ops = &noz_tty_port_ops;
  tty_dev = tty_port_register_device(&port->port, ntty_driver,
    dc->index_start + i, &pdev->dev);

  if (IS_ERR(tty_dev)) {
   ret = PTR_ERR(tty_dev);
   dev_err(&pdev->dev, "Could not allocate tty?\n");
   tty_port_destroy(&port->port);
   goto err_free_tty;
  }
 }

 return 0;

err_free_tty:
 for (i = 0; i < MAX_PORT; ++i) {
  tty_unregister_device(ntty_driver, dc->index_start + i);
  tty_port_destroy(&dc->port[i].port);
 }
err_free_kfifo:
 for (i = 0; i < MAX_PORT; i++)
  kfifo_free(&dc->port[i].fifo_ul);
err_free_sbuf:
 kfree(dc->send_buf);
 iounmap(dc->base_addr);
err_rel_regs:
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);
err_free:
 kfree(dc);
err:
 return ret;
}
