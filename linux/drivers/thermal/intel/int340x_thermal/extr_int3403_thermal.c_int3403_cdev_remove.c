
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int3403_priv {struct int3403_cdev* priv; } ;
struct int3403_cdev {int cdev; } ;


 int thermal_cooling_device_unregister (int ) ;

__attribute__((used)) static int int3403_cdev_remove(struct int3403_priv *priv)
{
 struct int3403_cdev *obj = priv->priv;

 thermal_cooling_device_unregister(obj->cdev);
 return 0;
}
