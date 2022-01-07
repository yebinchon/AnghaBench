
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int head; } ;
struct dev_pm_opp {int node; } ;


 int OPP_EVENT_REMOVE ;
 int _of_opp_free_required_opps (struct opp_table*,struct dev_pm_opp*) ;
 int blocking_notifier_call_chain (int *,int ,struct dev_pm_opp*) ;
 int kfree (struct dev_pm_opp*) ;
 int list_del (int *) ;
 int opp_debug_remove_one (struct dev_pm_opp*) ;

__attribute__((used)) static void _opp_kref_release(struct dev_pm_opp *opp,
         struct opp_table *opp_table)
{




 blocking_notifier_call_chain(&opp_table->head, OPP_EVENT_REMOVE, opp);
 _of_opp_free_required_opps(opp_table, opp);
 opp_debug_remove_one(opp);
 list_del(&opp->node);
 kfree(opp);
}
