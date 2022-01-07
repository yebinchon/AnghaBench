
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iowarrior {TYPE_1__* interface; struct iowarrior* read_queue; int int_in_urb; struct iowarrior* int_in_buffer; int minor; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int kfree (struct iowarrior*) ;
 int usb_free_urb (int ) ;
 int usb_put_intf (TYPE_1__*) ;

__attribute__((used)) static inline void iowarrior_delete(struct iowarrior *dev)
{
 dev_dbg(&dev->interface->dev, "minor %d\n", dev->minor);
 kfree(dev->int_in_buffer);
 usb_free_urb(dev->int_in_urb);
 kfree(dev->read_queue);
 usb_put_intf(dev->interface);
 kfree(dev);
}
