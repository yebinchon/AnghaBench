
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {int mode_ids; } ;
struct device {int dummy; } ;


 int ida_destroy (int *) ;
 int kfree (struct typec_partner*) ;
 struct typec_partner* to_typec_partner (struct device*) ;

__attribute__((used)) static void typec_partner_release(struct device *dev)
{
 struct typec_partner *partner = to_typec_partner(dev);

 ida_destroy(&partner->mode_ids);
 kfree(partner);
}
