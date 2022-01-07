
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fujitsu_laptop {TYPE_1__* input; int fifo_lock; int fifo; } ;
struct acpi_device {int dummy; } ;
typedef int scancode ;
struct TYPE_2__ {int dev; } ;


 struct fujitsu_laptop* acpi_driver_data (struct acpi_device*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int kfifo_in_locked (int *,unsigned char*,int,int *) ;
 int sparse_keymap_report_event (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void acpi_fujitsu_laptop_press(struct acpi_device *device, int scancode)
{
 struct fujitsu_laptop *priv = acpi_driver_data(device);
 int ret;

 ret = kfifo_in_locked(&priv->fifo, (unsigned char *)&scancode,
         sizeof(scancode), &priv->fifo_lock);
 if (ret != sizeof(scancode)) {
  dev_info(&priv->input->dev, "Could not push scancode [0x%x]\n",
    scancode);
  return;
 }
 sparse_keymap_report_event(priv->input, scancode, 1, 0);
 dev_dbg(&priv->input->dev, "Push scancode into ringbuffer [0x%x]\n",
  scancode);
}
