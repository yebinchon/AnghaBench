
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ex_phy {int routing_attr; } ;
struct TYPE_2__ {int t2t_supp; } ;
struct domain_device {TYPE_1__ ex_dev; } ;






__attribute__((used)) static char sas_route_char(struct domain_device *dev, struct ex_phy *phy)
{
 switch (phy->routing_attr) {
 case 128:
  if (dev->ex_dev.t2t_supp)
   return 'U';
  else
   return 'T';
 case 130:
  return 'D';
 case 129:
  return 'S';
 default:
  return '?';
 }
}
