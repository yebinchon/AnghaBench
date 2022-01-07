
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_interrupt_data {int type; struct gasket_interrupt_data* eventfd_ctxs; void* interrupt_counts; scalar_t__ num_configured; int pack_width; int interrupt_bar_index; int interrupts; int num_interrupts; int pci_dev; int name; } ;
struct gasket_driver_desc {int interrupt_type; int num_interrupts; int interrupt_pack_width; int interrupt_bar_index; int interrupts; int name; } ;
struct TYPE_2__ {int device; } ;
struct gasket_dev {TYPE_1__ dev_info; int dev; int pci_dev; struct gasket_interrupt_data* interrupt_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int dev_warn (int ,char*,int) ;
 int force_msix_interrupt_unmasking (struct gasket_dev*) ;
 struct gasket_driver_desc* gasket_get_driver_desc (struct gasket_dev*) ;
 int gasket_interrupt_msix_init (struct gasket_interrupt_data*) ;
 int gasket_interrupt_setup (struct gasket_dev*) ;
 int gasket_sysfs_create_entries (int ,int ) ;
 int interrupt_sysfs_attrs ;
 void* kcalloc (int ,int,int ) ;
 int kfree (struct gasket_interrupt_data*) ;
 struct gasket_interrupt_data* kzalloc (int,int ) ;

int gasket_interrupt_init(struct gasket_dev *gasket_dev)
{
 int ret;
 struct gasket_interrupt_data *interrupt_data;
 const struct gasket_driver_desc *driver_desc =
  gasket_get_driver_desc(gasket_dev);

 interrupt_data = kzalloc(sizeof(*interrupt_data), GFP_KERNEL);
 if (!interrupt_data)
  return -ENOMEM;
 gasket_dev->interrupt_data = interrupt_data;
 interrupt_data->name = driver_desc->name;
 interrupt_data->type = driver_desc->interrupt_type;
 interrupt_data->pci_dev = gasket_dev->pci_dev;
 interrupt_data->num_interrupts = driver_desc->num_interrupts;
 interrupt_data->interrupts = driver_desc->interrupts;
 interrupt_data->interrupt_bar_index = driver_desc->interrupt_bar_index;
 interrupt_data->pack_width = driver_desc->interrupt_pack_width;
 interrupt_data->num_configured = 0;

 interrupt_data->eventfd_ctxs =
  kcalloc(driver_desc->num_interrupts,
   sizeof(*interrupt_data->eventfd_ctxs), GFP_KERNEL);
 if (!interrupt_data->eventfd_ctxs) {
  kfree(interrupt_data);
  return -ENOMEM;
 }

 interrupt_data->interrupt_counts =
  kcalloc(driver_desc->num_interrupts,
   sizeof(*interrupt_data->interrupt_counts), GFP_KERNEL);
 if (!interrupt_data->interrupt_counts) {
  kfree(interrupt_data->eventfd_ctxs);
  kfree(interrupt_data);
  return -ENOMEM;
 }

 switch (interrupt_data->type) {
 case 128:
  ret = gasket_interrupt_msix_init(interrupt_data);
  if (ret)
   break;
  force_msix_interrupt_unmasking(gasket_dev);
  break;

 default:
  ret = -EINVAL;
 }

 if (ret) {



  dev_warn(gasket_dev->dev,
    "Couldn't initialize interrupts: %d\n", ret);
  return 0;
 }

 gasket_interrupt_setup(gasket_dev);
 gasket_sysfs_create_entries(gasket_dev->dev_info.device,
        interrupt_sysfs_attrs);

 return 0;
}
