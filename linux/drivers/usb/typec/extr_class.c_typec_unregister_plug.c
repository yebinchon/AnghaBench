
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_plug {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_plug*) ;
 int device_unregister (int *) ;

void typec_unregister_plug(struct typec_plug *plug)
{
 if (!IS_ERR_OR_NULL(plug))
  device_unregister(&plug->dev);
}
