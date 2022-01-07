
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_port_number; } ;
struct tb_switch {struct tb_switch* key; struct tb_switch* drom; struct tb_switch* ports; struct tb_switch* vendor_name; struct tb_switch* device_name; struct tb_switch* uuid; int out_hopids; int in_hopids; int disabled; TYPE_1__ config; int dma_port; } ;
struct device {int dummy; } ;


 int dma_port_free (int ) ;
 int ida_destroy (int *) ;
 int kfree (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static void tb_switch_release(struct device *dev)
{
 struct tb_switch *sw = tb_to_switch(dev);
 int i;

 dma_port_free(sw->dma_port);

 for (i = 1; i <= sw->config.max_port_number; i++) {
  if (!sw->ports[i].disabled) {
   ida_destroy(&sw->ports[i].in_hopids);
   ida_destroy(&sw->ports[i].out_hopids);
  }
 }

 kfree(sw->uuid);
 kfree(sw->device_name);
 kfree(sw->vendor_name);
 kfree(sw->ports);
 kfree(sw->drom);
 kfree(sw->key);
 kfree(sw);
}
