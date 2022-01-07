
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bcm2835_camera ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int platform_device_unregister (int ) ;
 int vchiq_cdev ;
 int vchiq_class ;
 int vchiq_debugfs_deinit () ;
 int vchiq_devid ;

__attribute__((used)) static int vchiq_remove(struct platform_device *pdev)
{
 platform_device_unregister(bcm2835_camera);
 vchiq_debugfs_deinit();
 device_destroy(vchiq_class, vchiq_devid);
 cdev_del(&vchiq_cdev);

 return 0;
}
