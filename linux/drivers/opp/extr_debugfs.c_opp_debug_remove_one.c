
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_pm_opp {int dentry; } ;


 int debugfs_remove_recursive (int ) ;

void opp_debug_remove_one(struct dev_pm_opp *opp)
{
 debugfs_remove_recursive(opp->dentry);
}
