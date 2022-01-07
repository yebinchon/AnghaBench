
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {int dev; } ;


 int IS_ERR_OR_NULL (struct typec_partner*) ;
 int device_unregister (int *) ;

void typec_unregister_partner(struct typec_partner *partner)
{
 if (!IS_ERR_OR_NULL(partner))
  device_unregister(&partner->dev);
}
