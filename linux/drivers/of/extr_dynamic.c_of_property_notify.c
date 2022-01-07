
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct of_reconfig_data {struct property* old_prop; struct property* prop; struct device_node* dn; } ;
struct device_node {int dummy; } ;


 int of_node_is_attached (struct device_node*) ;
 int of_reconfig_notify (int,struct of_reconfig_data*) ;

int of_property_notify(int action, struct device_node *np,
         struct property *prop, struct property *oldprop)
{
 struct of_reconfig_data pr;


 if (!of_node_is_attached(np))
  return 0;

 pr.dn = np;
 pr.prop = prop;
 pr.old_prop = oldprop;
 return of_reconfig_notify(action, &pr);
}
