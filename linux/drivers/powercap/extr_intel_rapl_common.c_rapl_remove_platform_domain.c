
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_if_priv {TYPE_1__* platform_rapl_domain; int control_type; } ;
struct TYPE_2__ {int power_zone; } ;


 int kfree (TYPE_1__*) ;
 int powercap_unregister_zone (int ,int *) ;

void rapl_remove_platform_domain(struct rapl_if_priv *priv)
{
 if (priv->platform_rapl_domain) {
  powercap_unregister_zone(priv->control_type,
     &priv->platform_rapl_domain->power_zone);
  kfree(priv->platform_rapl_domain);
 }
}
