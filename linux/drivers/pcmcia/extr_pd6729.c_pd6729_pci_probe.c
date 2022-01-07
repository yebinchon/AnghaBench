
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {int features; int map_size; scalar_t__ pci_irq; struct pd6729_socket* driver_data; TYPE_1__ dev; int * resource_ops; int * ops; int owner; struct pci_dev* cb_dev; scalar_t__ irq_mask; } ;
struct pd6729_socket {int number; int poll_timer; TYPE_2__ socket; scalar_t__ io_base; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ irq; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 int MAX_SOCKETS ;
 scalar_t__ NO_IRQ ;
 int PCI_COMMAND ;
 char PCI_COMMAND_MEMORY ;
 int SS_CAP_PAGE_REGS ;
 int SS_CAP_PCCARD ;
 int THIS_MODULE ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_info (int *,char*,unsigned long long,scalar_t__) ;
 int dev_warn (int *,char*) ;
 int free_irq (scalar_t__,struct pd6729_socket*) ;
 int irq_mode ;
 scalar_t__ jiffies ;
 struct pd6729_socket* kcalloc (int,int,int ) ;
 int kfree (struct pd6729_socket*) ;
 int mod_timer (int *,scalar_t__) ;
 int pccard_nonstatic_ops ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,char*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct pd6729_socket*) ;
 int pci_write_config_byte (struct pci_dev*,int ,char) ;
 int pcmcia_register_socket (TYPE_2__*) ;
 int pcmcia_unregister_socket (TYPE_2__*) ;
 int pd6729_interrupt ;
 int pd6729_interrupt_wrapper ;
 scalar_t__ pd6729_isa_scan () ;
 int pd6729_operations ;
 int request_irq (scalar_t__,int ,int ,char*,struct pd6729_socket*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pd6729_pci_probe(struct pci_dev *dev,
          const struct pci_device_id *id)
{
 int i, j, ret;
 u_int mask;
 char configbyte;
 struct pd6729_socket *socket;

 socket = kcalloc(MAX_SOCKETS, sizeof(struct pd6729_socket),
    GFP_KERNEL);
 if (!socket) {
  dev_warn(&dev->dev, "failed to kzalloc socket.\n");
  return -ENOMEM;
 }

 ret = pci_enable_device(dev);
 if (ret) {
  dev_warn(&dev->dev, "failed to enable pci_device.\n");
  goto err_out_free_mem;
 }

 if (!pci_resource_start(dev, 0)) {
  dev_warn(&dev->dev, "refusing to load the driver as the "
   "io_base is NULL.\n");
  ret = -ENOMEM;
  goto err_out_disable;
 }

 dev_info(&dev->dev, "Cirrus PD6729 PCI to PCMCIA Bridge at 0x%llx "
  "on irq %d\n",
  (unsigned long long)pci_resource_start(dev, 0), dev->irq);




 pci_read_config_byte(dev, PCI_COMMAND, &configbyte);
 if (!(configbyte & PCI_COMMAND_MEMORY)) {
  dev_dbg(&dev->dev, "pd6729: Enabling PCI_COMMAND_MEMORY.\n");
  configbyte |= PCI_COMMAND_MEMORY;
  pci_write_config_byte(dev, PCI_COMMAND, configbyte);
 }

 ret = pci_request_regions(dev, "pd6729");
 if (ret) {
  dev_warn(&dev->dev, "pci request region failed.\n");
  goto err_out_disable;
 }

 if (dev->irq == NO_IRQ)
  irq_mode = 0;

 mask = pd6729_isa_scan();
 if (irq_mode == 0 && mask == 0) {
  dev_warn(&dev->dev, "no ISA interrupt is available.\n");
  ret = -ENODEV;
  goto err_out_free_res;
 }

 for (i = 0; i < MAX_SOCKETS; i++) {
  socket[i].io_base = pci_resource_start(dev, 0);
  socket[i].socket.features |= SS_CAP_PAGE_REGS | SS_CAP_PCCARD;
  socket[i].socket.map_size = 0x1000;
  socket[i].socket.irq_mask = mask;
  socket[i].socket.pci_irq = dev->irq;
  socket[i].socket.cb_dev = dev;
  socket[i].socket.owner = THIS_MODULE;

  socket[i].number = i;

  socket[i].socket.ops = &pd6729_operations;
  socket[i].socket.resource_ops = &pccard_nonstatic_ops;
  socket[i].socket.dev.parent = &dev->dev;
  socket[i].socket.driver_data = &socket[i];
 }

 pci_set_drvdata(dev, socket);
 if (irq_mode == 1) {

  ret = request_irq(dev->irq, pd6729_interrupt, IRQF_SHARED,
      "pd6729", socket);
  if (ret) {
   dev_err(&dev->dev, "Failed to register irq %d\n",
    dev->irq);
   goto err_out_free_res;
  }
 } else {

  timer_setup(&socket->poll_timer, pd6729_interrupt_wrapper, 0);
  mod_timer(&socket->poll_timer, jiffies + HZ);
 }

 for (i = 0; i < MAX_SOCKETS; i++) {
  ret = pcmcia_register_socket(&socket[i].socket);
  if (ret) {
   dev_warn(&dev->dev, "pcmcia_register_socket failed.\n");
   for (j = 0; j < i ; j++)
    pcmcia_unregister_socket(&socket[j].socket);
   goto err_out_free_res2;
  }
 }

 return 0;

err_out_free_res2:
 if (irq_mode == 1)
  free_irq(dev->irq, socket);
 else
  del_timer_sync(&socket->poll_timer);
err_out_free_res:
 pci_release_regions(dev);
err_out_disable:
 pci_disable_device(dev);

err_out_free_mem:
 kfree(socket);
 return ret;
}
