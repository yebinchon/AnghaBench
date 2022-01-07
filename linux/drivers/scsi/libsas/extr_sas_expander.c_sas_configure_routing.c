
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct domain_device {scalar_t__ parent; } ;


 int sas_configure_parent (scalar_t__,struct domain_device*,int *,int) ;

__attribute__((used)) static int sas_configure_routing(struct domain_device *dev, u8 *sas_addr)
{
 if (dev->parent)
  return sas_configure_parent(dev->parent, dev, sas_addr, 1);
 return 0;
}
