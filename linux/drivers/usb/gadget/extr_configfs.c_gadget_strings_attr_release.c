
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadget_strings {int list; struct gadget_strings* serialnumber; struct gadget_strings* product; struct gadget_strings* manufacturer; } ;
struct config_item {int dummy; } ;


 int kfree (struct gadget_strings*) ;
 int list_del (int *) ;
 struct gadget_strings* to_gadget_strings (struct config_item*) ;

__attribute__((used)) static void gadget_strings_attr_release(struct config_item *item)
{
 struct gadget_strings *gs = to_gadget_strings(item);

 kfree(gs->manufacturer);
 kfree(gs->product);
 kfree(gs->serialnumber);

 list_del(&gs->list);
 kfree(gs);
}
