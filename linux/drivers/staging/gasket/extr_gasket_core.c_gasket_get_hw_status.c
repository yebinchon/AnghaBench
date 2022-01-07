
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_driver_desc {int num_page_tables; int device_status_cb; } ;
struct gasket_dev {int dev; int * page_table; TYPE_1__* internal_desc; } ;
struct TYPE_2__ {struct gasket_driver_desc* driver_desc; } ;


 int GASKET_STATUS_ALIVE ;
 int dev_dbg (int ,char*,int,...) ;
 int gasket_check_and_invoke_callback_nolock (struct gasket_dev*,int ) ;
 int gasket_interrupt_system_status (struct gasket_dev*) ;
 int gasket_page_table_system_status (int ) ;

__attribute__((used)) static int gasket_get_hw_status(struct gasket_dev *gasket_dev)
{
 int status;
 int i;
 const struct gasket_driver_desc *driver_desc =
  gasket_dev->internal_desc->driver_desc;

 status = gasket_check_and_invoke_callback_nolock(gasket_dev,
        driver_desc->device_status_cb);
 if (status != GASKET_STATUS_ALIVE) {
  dev_dbg(gasket_dev->dev, "Hardware reported status %d.\n",
   status);
  return status;
 }

 status = gasket_interrupt_system_status(gasket_dev);
 if (status != GASKET_STATUS_ALIVE) {
  dev_dbg(gasket_dev->dev,
   "Interrupt system reported status %d.\n", status);
  return status;
 }

 for (i = 0; i < driver_desc->num_page_tables; ++i) {
  status = gasket_page_table_system_status(gasket_dev->page_table[i]);
  if (status != GASKET_STATUS_ALIVE) {
   dev_dbg(gasket_dev->dev,
    "Page table %d reported status %d.\n",
    i, status);
   return status;
  }
 }

 return GASKET_STATUS_ALIVE;
}
