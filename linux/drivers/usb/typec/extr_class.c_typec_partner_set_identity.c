
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {int dev; int identity; } ;


 int EINVAL ;
 int typec_report_identity (int *) ;

int typec_partner_set_identity(struct typec_partner *partner)
{
 if (!partner->identity)
  return -EINVAL;

 typec_report_identity(&partner->dev);
 return 0;
}
