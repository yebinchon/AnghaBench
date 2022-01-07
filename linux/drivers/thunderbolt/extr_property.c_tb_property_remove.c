
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_property {int list; } ;


 int kfree (struct tb_property*) ;
 int list_del (int *) ;

void tb_property_remove(struct tb_property *property)
{
 list_del(&property->list);
 kfree(property);
}
