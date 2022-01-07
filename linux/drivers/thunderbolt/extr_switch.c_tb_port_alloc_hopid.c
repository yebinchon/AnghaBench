
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida {int dummy; } ;
struct TYPE_2__ {int max_in_hop_id; int max_out_hop_id; } ;
struct tb_port {struct ida out_hopids; TYPE_1__ config; struct ida in_hopids; } ;


 int GFP_KERNEL ;
 int TB_PATH_MIN_HOPID ;
 int ida_simple_get (struct ida*,int,int,int ) ;

__attribute__((used)) static int tb_port_alloc_hopid(struct tb_port *port, bool in, int min_hopid,
          int max_hopid)
{
 int port_max_hopid;
 struct ida *ida;

 if (in) {
  port_max_hopid = port->config.max_in_hop_id;
  ida = &port->in_hopids;
 } else {
  port_max_hopid = port->config.max_out_hop_id;
  ida = &port->out_hopids;
 }


 if (min_hopid < TB_PATH_MIN_HOPID)
  min_hopid = TB_PATH_MIN_HOPID;

 if (max_hopid < 0 || max_hopid > port_max_hopid)
  max_hopid = port_max_hopid;

 return ida_simple_get(ida, min_hopid, max_hopid + 1, GFP_KERNEL);
}
