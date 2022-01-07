
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_cable {int dev; int identity; } ;


 int EINVAL ;
 int typec_report_identity (int *) ;

int typec_cable_set_identity(struct typec_cable *cable)
{
 if (!cable->identity)
  return -EINVAL;

 typec_report_identity(&cable->dev);
 return 0;
}
