
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct int3403_priv* devdata; } ;
struct int3403_priv {struct int3403_cdev* priv; } ;
struct int3403_cdev {unsigned long max_state; } ;



__attribute__((used)) static int int3403_get_max_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 struct int3403_priv *priv = cdev->devdata;
 struct int3403_cdev *obj = priv->priv;

 *state = obj->max_state;
 return 0;
}
