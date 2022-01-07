
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int * set_opp_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void _free_set_opp_data(struct opp_table *opp_table)
{
 kfree(opp_table->set_opp_data);
 opp_table->set_opp_data = ((void*)0);
}
