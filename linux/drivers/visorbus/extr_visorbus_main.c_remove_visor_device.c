
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int device; scalar_t__ pending_msg_hdr; int list_all; } ;


 int CONTROLVM_DEVICE_DESTROY ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int put_device (int *) ;
 int visorbus_response (struct visor_device*,int ,int ) ;

void remove_visor_device(struct visor_device *dev)
{
 list_del(&dev->list_all);
 put_device(&dev->device);
 if (dev->pending_msg_hdr)
  visorbus_response(dev, 0, CONTROLVM_DEVICE_DESTROY);
 device_unregister(&dev->device);
}
