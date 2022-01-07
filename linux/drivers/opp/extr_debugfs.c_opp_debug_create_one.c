
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {struct dentry* dentry; } ;
struct dev_pm_opp {unsigned long rate; unsigned long clock_latency_ns; struct dentry* dentry; int pstate; int suspend; int turbo; int dynamic; int available; } ;
struct dentry {int dummy; } ;
typedef int name ;


 int S_IRUGO ;
 unsigned long _get_opp_count (struct opp_table*) ;
 int debugfs_create_bool (char*,int ,struct dentry*,int *) ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_u32 (char*,int ,struct dentry*,int *) ;
 int debugfs_create_ulong (char*,int ,struct dentry*,unsigned long*) ;
 scalar_t__ likely (unsigned long) ;
 int opp_debug_create_supplies (struct dev_pm_opp*,struct opp_table*,struct dentry*) ;
 int snprintf (char*,int,char*,unsigned long) ;

void opp_debug_create_one(struct dev_pm_opp *opp, struct opp_table *opp_table)
{
 struct dentry *pdentry = opp_table->dentry;
 struct dentry *d;
 unsigned long id;
 char name[25];







 if (likely(opp->rate))
  id = opp->rate;
 else
  id = _get_opp_count(opp_table);

 snprintf(name, sizeof(name), "opp:%lu", id);


 d = debugfs_create_dir(name, pdentry);

 debugfs_create_bool("available", S_IRUGO, d, &opp->available);
 debugfs_create_bool("dynamic", S_IRUGO, d, &opp->dynamic);
 debugfs_create_bool("turbo", S_IRUGO, d, &opp->turbo);
 debugfs_create_bool("suspend", S_IRUGO, d, &opp->suspend);
 debugfs_create_u32("performance_state", S_IRUGO, d, &opp->pstate);
 debugfs_create_ulong("rate_hz", S_IRUGO, d, &opp->rate);
 debugfs_create_ulong("clock_latency_ns", S_IRUGO, d,
        &opp->clock_latency_ns);

 opp_debug_create_supplies(opp, opp_table, d);

 opp->dentry = d;
}
