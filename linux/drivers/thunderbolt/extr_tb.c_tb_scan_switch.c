
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_port_number; } ;
struct tb_switch {int * ports; TYPE_1__ config; } ;


 int tb_scan_port (int *) ;

__attribute__((used)) static void tb_scan_switch(struct tb_switch *sw)
{
 int i;
 for (i = 1; i <= sw->config.max_port_number; i++)
  tb_scan_port(&sw->ports[i]);
}
