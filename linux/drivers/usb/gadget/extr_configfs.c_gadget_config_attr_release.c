
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct config_usb_cfg* label; int list; int functions; } ;
struct config_usb_cfg {TYPE_1__ c; } ;
struct config_item {int dummy; } ;


 int WARN_ON (int) ;
 int kfree (struct config_usb_cfg*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 struct config_usb_cfg* to_config_usb_cfg (struct config_item*) ;

__attribute__((used)) static void gadget_config_attr_release(struct config_item *item)
{
 struct config_usb_cfg *cfg = to_config_usb_cfg(item);

 WARN_ON(!list_empty(&cfg->c.functions));
 list_del(&cfg->c.list);
 kfree(cfg->c.label);
 kfree(cfg);
}
