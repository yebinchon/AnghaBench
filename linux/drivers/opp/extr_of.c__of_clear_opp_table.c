
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int dummy; } ;


 int _opp_table_free_required_tables (struct opp_table*) ;

void _of_clear_opp_table(struct opp_table *opp_table)
{
 _opp_table_free_required_tables(opp_table);
}
