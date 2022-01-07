
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_switch {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_switch*) ;
 int device_unregister (int *) ;

void typec_switch_unregister(struct typec_switch *sw)
{
 if (!IS_ERR_OR_NULL(sw))
  device_unregister(&sw->dev);
}
