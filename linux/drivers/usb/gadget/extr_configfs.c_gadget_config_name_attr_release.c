
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadget_config_name {int list; struct gadget_config_name* configuration; } ;
struct config_item {int dummy; } ;


 int kfree (struct gadget_config_name*) ;
 int list_del (int *) ;
 struct gadget_config_name* to_gadget_config_name (struct config_item*) ;

__attribute__((used)) static void gadget_config_name_attr_release(struct config_item *item)
{
 struct gadget_config_name *cn = to_gadget_config_name(item);

 kfree(cn->configuration);

 list_del(&cn->list);
 kfree(cn);
}
