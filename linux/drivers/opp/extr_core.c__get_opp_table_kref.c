
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int kref; } ;


 int kref_get (int *) ;

void _get_opp_table_kref(struct opp_table *opp_table)
{
 kref_get(&opp_table->kref);
}
