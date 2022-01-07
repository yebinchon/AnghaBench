
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport_db_filter {int priv_node; int data_node; } ;


 int kfree (struct rio_mport_db_filter*) ;
 int list_del (int *) ;

__attribute__((used)) static void rio_mport_delete_db_filter(struct rio_mport_db_filter *db_filter)
{
 list_del(&db_filter->data_node);
 list_del(&db_filter->priv_node);
 kfree(db_filter);
}
