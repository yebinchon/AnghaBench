
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {scalar_t__ dentry; } ;
struct opp_device {int dummy; } ;


 int opp_list_debug_create_dir (struct opp_device*,struct opp_table*) ;
 int opp_list_debug_create_link (struct opp_device*,struct opp_table*) ;

void opp_debug_register(struct opp_device *opp_dev, struct opp_table *opp_table)
{
 if (opp_table->dentry)
  opp_list_debug_create_link(opp_dev, opp_table);
 else
  opp_list_debug_create_dir(opp_dev, opp_table);
}
