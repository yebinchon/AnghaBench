
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int dev; } ;


 int device_for_each_child_reverse (int *,struct tb_xdomain*,int ) ;
 int device_is_registered (int *) ;
 int device_unregister (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int put_device (int *) ;
 int stop_handshake (struct tb_xdomain*) ;
 int unregister_service ;

void tb_xdomain_remove(struct tb_xdomain *xd)
{
 stop_handshake(xd);

 device_for_each_child_reverse(&xd->dev, xd, unregister_service);






 pm_runtime_disable(&xd->dev);
 pm_runtime_put_noidle(&xd->dev);
 pm_runtime_set_suspended(&xd->dev);

 if (!device_is_registered(&xd->dev))
  put_device(&xd->dev);
 else
  device_unregister(&xd->dev);
}
