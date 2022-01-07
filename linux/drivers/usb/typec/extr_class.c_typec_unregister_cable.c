
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_cable {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_cable*) ;
 int device_unregister (int *) ;

void typec_unregister_cable(struct typec_cable *cable)
{
 if (!IS_ERR_OR_NULL(cable))
  device_unregister(&cable->dev);
}
