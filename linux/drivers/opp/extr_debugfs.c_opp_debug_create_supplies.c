
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opp_table {int regulator_count; } ;
struct dev_pm_opp {TYPE_1__* supplies; } ;
struct dentry {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int u_amp; int u_volt_max; int u_volt_min; int u_volt; } ;


 int S_IRUGO ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_ulong (char*,int ,struct dentry*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void opp_debug_create_supplies(struct dev_pm_opp *opp,
          struct opp_table *opp_table,
          struct dentry *pdentry)
{
 struct dentry *d;
 int i;

 for (i = 0; i < opp_table->regulator_count; i++) {
  char name[15];

  snprintf(name, sizeof(name), "supply-%d", i);


  d = debugfs_create_dir(name, pdentry);

  debugfs_create_ulong("u_volt_target", S_IRUGO, d,
         &opp->supplies[i].u_volt);

  debugfs_create_ulong("u_volt_min", S_IRUGO, d,
         &opp->supplies[i].u_volt_min);

  debugfs_create_ulong("u_volt_max", S_IRUGO, d,
         &opp->supplies[i].u_volt_max);

  debugfs_create_ulong("u_amp", S_IRUGO, d,
         &opp->supplies[i].u_amp);
 }
}
