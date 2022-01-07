
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_7__ {int features; int map_size; struct pci_dev* cb_dev; int owner; struct yenta_socket* driver_data; TYPE_1__ dev; int * resource_ops; int * ops; } ;
struct yenta_socket {int base; int poll_timer; scalar_t__ cb_irq; TYPE_2__ socket; TYPE_4__* type; struct pci_dev* dev; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dev; int subordinate; scalar_t__ irq; int subsystem_device; int subsystem_vendor; } ;
struct TYPE_8__ {int (* override ) (struct yenta_socket*) ;} ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 size_t CARDBUS_TYPE_DEFAULT ;
 int CB_SOCKET_MASK ;
 int CB_SOCKET_STATE ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 int SS_CAP_CARDBUS ;
 int SS_CAP_PAGE_REGS ;
 int SS_CAP_PCCARD ;
 int THIS_MODULE ;
 TYPE_4__* cardbus_type ;
 int cb_readl (struct yenta_socket*,int ) ;
 int cb_writel (struct yenta_socket*,int ,int) ;
 int del_timer_sync (int *) ;
 int dev_attr_yenta_registers ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int device_create_file (int *,int *) ;
 int free_irq (scalar_t__,struct yenta_socket*) ;
 int ioremap (int ,int) ;
 int iounmap (int ) ;
 int isa_interrupts ;
 scalar_t__ jiffies ;
 int kfree (struct yenta_socket*) ;
 struct yenta_socket* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int pccard_nonstatic_ops ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct yenta_socket*) ;
 int pcmcia_register_socket (TYPE_2__*) ;
 int pcmcia_unregister_socket (TYPE_2__*) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,char*,struct yenta_socket*) ;
 int stub1 (struct yenta_socket*) ;
 int timer_setup (int *,int ,int ) ;
 int yenta_allocate_resources (struct yenta_socket*) ;
 int yenta_config_init (struct yenta_socket*) ;
 int yenta_fixup_parent_bridge (int ) ;
 int yenta_free_resources (struct yenta_socket*) ;
 int yenta_get_socket_capabilities (struct yenta_socket*,int ) ;
 int yenta_interrogate (struct yenta_socket*) ;
 int yenta_interrupt ;
 int yenta_interrupt_wrapper ;
 int yenta_socket_operations ;

__attribute__((used)) static int yenta_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct yenta_socket *socket;
 int ret;






 if (!dev->subordinate) {
  dev_err(&dev->dev, "no bus associated! (try 'pci=assign-busses')\n");
  return -ENODEV;
 }

 socket = kzalloc(sizeof(struct yenta_socket), GFP_KERNEL);
 if (!socket)
  return -ENOMEM;


 socket->socket.ops = &yenta_socket_operations;
 socket->socket.resource_ops = &pccard_nonstatic_ops;
 socket->socket.dev.parent = &dev->dev;
 socket->socket.driver_data = socket;
 socket->socket.owner = THIS_MODULE;
 socket->socket.features = SS_CAP_PAGE_REGS | SS_CAP_PCCARD;
 socket->socket.map_size = 0x1000;
 socket->socket.cb_dev = dev;


 socket->dev = dev;
 pci_set_drvdata(dev, socket);




 if (pci_enable_device(dev)) {
  ret = -EBUSY;
  goto free;
 }

 ret = pci_request_regions(dev, "yenta_socket");
 if (ret)
  goto disable;

 if (!pci_resource_start(dev, 0)) {
  dev_err(&dev->dev, "No cardbus resource!\n");
  ret = -ENODEV;
  goto release;
 }





 socket->base = ioremap(pci_resource_start(dev, 0), 0x1000);
 if (!socket->base) {
  ret = -ENOMEM;
  goto release;
 }





 dev_info(&dev->dev, "CardBus bridge found [%04x:%04x]\n",
   dev->subsystem_vendor, dev->subsystem_device);

 yenta_config_init(socket);


 cb_writel(socket, CB_SOCKET_MASK, 0x0);


 yenta_allocate_resources(socket);

 socket->cb_irq = dev->irq;


 if (id->driver_data != CARDBUS_TYPE_DEFAULT &&
     id->driver_data < ARRAY_SIZE(cardbus_type)) {
  socket->type = &cardbus_type[id->driver_data];

  ret = socket->type->override(socket);
  if (ret < 0)
   goto unmap;
 }



 if (!socket->cb_irq || request_irq(socket->cb_irq, yenta_interrupt, IRQF_SHARED, "yenta", socket)) {

  socket->cb_irq = 0;
  timer_setup(&socket->poll_timer, yenta_interrupt_wrapper, 0);
  mod_timer(&socket->poll_timer, jiffies + HZ);
  dev_info(&dev->dev,
    "no PCI IRQ, CardBus support disabled for this socket.\n");
  dev_info(&dev->dev,
    "check your BIOS CardBus, BIOS IRQ or ACPI settings.\n");
 } else {
  socket->socket.features |= SS_CAP_CARDBUS;
 }


 yenta_interrogate(socket);
 yenta_get_socket_capabilities(socket, isa_interrupts);
 dev_info(&dev->dev, "Socket status: %08x\n",
   cb_readl(socket, CB_SOCKET_STATE));

 yenta_fixup_parent_bridge(dev->subordinate);


 ret = pcmcia_register_socket(&socket->socket);
 if (ret)
  goto free_irq;


 ret = device_create_file(&dev->dev, &dev_attr_yenta_registers);
 if (ret)
  goto unregister_socket;

 return ret;


 unregister_socket:
 pcmcia_unregister_socket(&socket->socket);
 free_irq:
 if (socket->cb_irq)
  free_irq(socket->cb_irq, socket);
 else
  del_timer_sync(&socket->poll_timer);
 unmap:
 iounmap(socket->base);
 yenta_free_resources(socket);
 release:
 pci_release_regions(dev);
 disable:
 pci_disable_device(dev);
 free:
 pci_set_drvdata(dev, ((void*)0));
 kfree(socket);
 return ret;
}
