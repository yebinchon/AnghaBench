
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int * dentry; int dev_list; } ;
struct opp_device {int * dentry; } ;


 int debugfs_remove_recursive (int *) ;
 int list_is_singular (int *) ;
 int opp_migrate_dentry (struct opp_device*,struct opp_table*) ;

void opp_debug_unregister(struct opp_device *opp_dev,
     struct opp_table *opp_table)
{
 if (opp_dev->dentry == opp_table->dentry) {

  if (!list_is_singular(&opp_table->dev_list)) {
   opp_migrate_dentry(opp_dev, opp_table);
   goto out;
  }
  opp_table->dentry = ((void*)0);
 }

 debugfs_remove_recursive(opp_dev->dentry);

out:
 opp_dev->dentry = ((void*)0);
}
