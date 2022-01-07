
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct tb_xdomain {int route; TYPE_1__ dev; } ;
struct tb_switch {int dummy; } ;
struct TYPE_4__ {int * xdomain; } ;


 TYPE_2__* tb_port_at (int ,struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;
 int tb_xdomain_remove (struct tb_xdomain*) ;

__attribute__((used)) static void remove_xdomain(struct tb_xdomain *xd)
{
 struct tb_switch *sw;

 sw = tb_to_switch(xd->dev.parent);
 tb_port_at(xd->route, sw)->xdomain = ((void*)0);
 tb_xdomain_remove(xd);
}
