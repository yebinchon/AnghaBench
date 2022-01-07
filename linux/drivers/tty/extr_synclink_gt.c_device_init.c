
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slgt_info {int port_count; int irq_requested; TYPE_1__* pdev; int line; int port; int gpio_present; int init_error; int irq_level; int device_name; int irq_flags; int reg_addr; int lock; int port_array; } ;
struct pci_dev {scalar_t__ device; } ;
typedef int port_array ;
struct TYPE_2__ {int dev; } ;


 int DBGERR (char*) ;
 int SLGT_MAX_PORTS ;
 scalar_t__ SYNCLINK_GT2_DEVICE_ID ;
 scalar_t__ SYNCLINK_GT4_DEVICE_ID ;
 int adapter_test (struct slgt_info*) ;
 int add_device (struct slgt_info*) ;
 struct slgt_info* alloc_dev (int,int,struct pci_dev*) ;
 int alloc_dma_bufs (struct slgt_info*) ;
 int claim_resources (struct slgt_info*) ;
 int kfree (struct slgt_info*) ;
 int memcpy (int ,struct slgt_info**,int) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct slgt_info*) ;
 int serial_driver ;
 int slgt_interrupt ;
 int spin_lock_init (int *) ;
 int tty_port_destroy (int *) ;
 int tty_port_register_device (int *,int ,int ,int *) ;

__attribute__((used)) static void device_init(int adapter_num, struct pci_dev *pdev)
{
 struct slgt_info *port_array[SLGT_MAX_PORTS];
 int i;
 int port_count = 1;

 if (pdev->device == SYNCLINK_GT2_DEVICE_ID)
  port_count = 2;
 else if (pdev->device == SYNCLINK_GT4_DEVICE_ID)
  port_count = 4;


 for (i=0; i < port_count; ++i) {
  port_array[i] = alloc_dev(adapter_num, i, pdev);
  if (port_array[i] == ((void*)0)) {
   for (--i; i >= 0; --i) {
    tty_port_destroy(&port_array[i]->port);
    kfree(port_array[i]);
   }
   return;
  }
 }


 for (i=0; i < port_count; ++i) {
  memcpy(port_array[i]->port_array, port_array, sizeof(port_array));
  add_device(port_array[i]);
  port_array[i]->port_count = port_count;
  spin_lock_init(&port_array[i]->lock);
 }


 if (!claim_resources(port_array[0])) {

  alloc_dma_bufs(port_array[0]);


  for (i = 1; i < port_count; ++i) {
   port_array[i]->irq_level = port_array[0]->irq_level;
   port_array[i]->reg_addr = port_array[0]->reg_addr;
   alloc_dma_bufs(port_array[i]);
  }

  if (request_irq(port_array[0]->irq_level,
     slgt_interrupt,
     port_array[0]->irq_flags,
     port_array[0]->device_name,
     port_array[0]) < 0) {
   DBGERR(("%s request_irq failed IRQ=%d\n",
    port_array[0]->device_name,
    port_array[0]->irq_level));
  } else {
   port_array[0]->irq_requested = 1;
   adapter_test(port_array[0]);
   for (i=1 ; i < port_count ; i++) {
    port_array[i]->init_error = port_array[0]->init_error;
    port_array[i]->gpio_present = port_array[0]->gpio_present;
   }
  }
 }

 for (i = 0; i < port_count; ++i) {
  struct slgt_info *info = port_array[i];
  tty_port_register_device(&info->port, serial_driver, info->line,
    &info->pdev->dev);
 }
}
