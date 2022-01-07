
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_driver_desc {int num_page_tables; size_t page_table_bar_index; int module; int hardware_revision_cb; int * page_table_configs; } ;
struct gasket_dev {int hardware_revision; scalar_t__ status; int dev_info; int dev; int * page_table; int pci_dev; int * bar_data; TYPE_1__* internal_desc; } ;
struct TYPE_2__ {struct gasket_driver_desc* driver_desc; } ;


 scalar_t__ GASKET_STATUS_DEAD ;
 int check_and_invoke_callback (struct gasket_dev*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int gasket_add_cdev (int *,int *,int ) ;
 int gasket_file_ops ;
 scalar_t__ gasket_get_hw_status (struct gasket_dev*) ;
 int gasket_interrupt_cleanup (struct gasket_dev*) ;
 int gasket_interrupt_init (struct gasket_dev*) ;
 int gasket_page_table_init (int *,int *,int *,int ,int ) ;
 int gasket_page_table_reset (int ) ;

int gasket_enable_device(struct gasket_dev *gasket_dev)
{
 int tbl_idx;
 int ret;
 const struct gasket_driver_desc *driver_desc =
  gasket_dev->internal_desc->driver_desc;

 ret = gasket_interrupt_init(gasket_dev);
 if (ret) {
  dev_err(gasket_dev->dev,
   "Critical failure to allocate interrupts: %d\n", ret);
  gasket_interrupt_cleanup(gasket_dev);
  return ret;
 }

 for (tbl_idx = 0; tbl_idx < driver_desc->num_page_tables; tbl_idx++) {
  dev_dbg(gasket_dev->dev, "Initializing page table %d.\n",
   tbl_idx);
  ret = gasket_page_table_init(&gasket_dev->page_table[tbl_idx],
          &gasket_dev->bar_data[driver_desc->page_table_bar_index],
          &driver_desc->page_table_configs[tbl_idx],
          gasket_dev->dev,
          gasket_dev->pci_dev);
  if (ret) {
   dev_err(gasket_dev->dev,
    "Couldn't init page table %d: %d\n",
    tbl_idx, ret);
   return ret;
  }




  gasket_page_table_reset(gasket_dev->page_table[tbl_idx]);
 }





 ret = check_and_invoke_callback(gasket_dev,
     driver_desc->hardware_revision_cb);
 if (ret < 0) {
  dev_err(gasket_dev->dev,
   "Error getting hardware revision: %d\n", ret);
  return ret;
 }
 gasket_dev->hardware_revision = ret;


 gasket_dev->status = gasket_get_hw_status(gasket_dev);
 if (gasket_dev->status == GASKET_STATUS_DEAD)
  dev_err(gasket_dev->dev, "Device reported as unhealthy.\n");

 ret = gasket_add_cdev(&gasket_dev->dev_info, &gasket_file_ops,
         driver_desc->module);
 if (ret)
  return ret;

 return 0;
}
