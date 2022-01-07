
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pd_identity {int dummy; } ;
struct typec_partner {struct usb_pd_identity* identity; } ;
struct typec_cable {struct usb_pd_identity* identity; } ;
struct device {int dummy; } ;


 scalar_t__ is_typec_cable (struct device*) ;
 scalar_t__ is_typec_partner (struct device*) ;
 struct typec_cable* to_typec_cable (struct device*) ;
 struct typec_partner* to_typec_partner (struct device*) ;

__attribute__((used)) static struct usb_pd_identity *get_pd_identity(struct device *dev)
{
 if (is_typec_partner(dev)) {
  struct typec_partner *partner = to_typec_partner(dev);

  return partner->identity;
 } else if (is_typec_cable(dev)) {
  struct typec_cable *cable = to_typec_cable(dev);

  return cable->identity;
 }
 return ((void*)0);
}
