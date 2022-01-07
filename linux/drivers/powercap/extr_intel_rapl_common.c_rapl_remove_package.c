
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_package {int nr_domains; int plist; TYPE_1__* priv; int name; struct rapl_domain* domains; } ;
struct rapl_domain {scalar_t__ id; int power_zone; int name; } ;
struct TYPE_2__ {int control_type; } ;


 int PL1_CLAMP ;
 int PL1_ENABLE ;
 int PL2_CLAMP ;
 int PL2_ENABLE ;
 scalar_t__ RAPL_DOMAIN_PACKAGE ;
 int find_nr_power_limit (struct rapl_domain*) ;
 int kfree (struct rapl_package*) ;
 int list_del (int *) ;
 int package_power_limit_irq_restore (struct rapl_package*) ;
 int powercap_unregister_zone (int ,int *) ;
 int pr_debug (char*,int ,int ) ;
 int rapl_write_data_raw (struct rapl_domain*,int ,int ) ;

void rapl_remove_package(struct rapl_package *rp)
{
 struct rapl_domain *rd, *rd_package = ((void*)0);

 package_power_limit_irq_restore(rp);

 for (rd = rp->domains; rd < rp->domains + rp->nr_domains; rd++) {
  rapl_write_data_raw(rd, PL1_ENABLE, 0);
  rapl_write_data_raw(rd, PL1_CLAMP, 0);
  if (find_nr_power_limit(rd) > 1) {
   rapl_write_data_raw(rd, PL2_ENABLE, 0);
   rapl_write_data_raw(rd, PL2_CLAMP, 0);
  }
  if (rd->id == RAPL_DOMAIN_PACKAGE) {
   rd_package = rd;
   continue;
  }
  pr_debug("remove package, undo power limit on %s: %s\n",
    rp->name, rd->name);
  powercap_unregister_zone(rp->priv->control_type,
      &rd->power_zone);
 }

 powercap_unregister_zone(rp->priv->control_type,
     &rd_package->power_zone);
 list_del(&rp->plist);
 kfree(rp);
}
