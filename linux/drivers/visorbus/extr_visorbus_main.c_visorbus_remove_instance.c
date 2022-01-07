
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int device; scalar_t__ pending_msg_hdr; int list_all; int vbus_hdr_info; } ;


 int CONTROLVM_BUS_DESTROY ;
 int device_unregister (int *) ;
 int kfree (int ) ;
 int list_del (int *) ;
 int visorbus_response (struct visor_device*,int ,int ) ;

void visorbus_remove_instance(struct visor_device *dev)
{
 kfree(dev->vbus_hdr_info);
 list_del(&dev->list_all);
 if (dev->pending_msg_hdr)
  visorbus_response(dev, 0, CONTROLVM_BUS_DESTROY);
 device_unregister(&dev->device);
}
