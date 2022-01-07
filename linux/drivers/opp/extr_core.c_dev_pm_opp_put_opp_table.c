
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int kref; } ;


 int _opp_table_kref_release ;
 int kref_put_mutex (int *,int ,int *) ;
 int opp_table_lock ;

void dev_pm_opp_put_opp_table(struct opp_table *opp_table)
{
 kref_put_mutex(&opp_table->kref, _opp_table_kref_release,
         &opp_table_lock);
}
