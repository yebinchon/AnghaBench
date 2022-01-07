
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct tb_switch {TYPE_1__ dev; } ;
struct TYPE_4__ {int * remote; } ;


 TYPE_2__* tb_port_at (int ,struct tb_switch*) ;
 int tb_route (struct tb_switch*) ;
 int tb_switch_remove (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;

__attribute__((used)) static void remove_switch(struct tb_switch *sw)
{
 struct tb_switch *parent_sw;

 parent_sw = tb_to_switch(sw->dev.parent);
 tb_port_at(tb_route(sw), parent_sw)->remote = ((void*)0);
 tb_switch_remove(sw);
}
