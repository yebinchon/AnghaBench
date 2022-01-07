
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_dev {int dev; TYPE_1__* interrupt_data; } ;
struct TYPE_2__ {scalar_t__ num_configured; scalar_t__ num_interrupts; } ;


 int GASKET_STATUS_ALIVE ;
 int GASKET_STATUS_DEAD ;
 int GASKET_STATUS_LAMED ;
 int dev_dbg (int ,char*) ;

int gasket_interrupt_system_status(struct gasket_dev *gasket_dev)
{
 if (!gasket_dev->interrupt_data) {
  dev_dbg(gasket_dev->dev, "Interrupt data is null\n");
  return GASKET_STATUS_DEAD;
 }

 if (gasket_dev->interrupt_data->num_configured !=
  gasket_dev->interrupt_data->num_interrupts) {
  dev_dbg(gasket_dev->dev,
   "Not all interrupts were configured\n");
  return GASKET_STATUS_LAMED;
 }

 return GASKET_STATUS_ALIVE;
}
