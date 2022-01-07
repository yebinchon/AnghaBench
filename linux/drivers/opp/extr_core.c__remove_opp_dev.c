
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;
struct opp_device {int node; } ;


 int kfree (struct opp_device*) ;
 int list_del (int *) ;
 int opp_debug_unregister (struct opp_device*,struct opp_table*) ;

__attribute__((used)) static void _remove_opp_dev(struct opp_device *opp_dev,
       struct opp_table *opp_table)
{
 opp_debug_unregister(opp_dev, opp_table);
 list_del(&opp_dev->node);
 kfree(opp_dev);
}
