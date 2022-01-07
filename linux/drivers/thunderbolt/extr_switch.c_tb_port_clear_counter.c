
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_port {int dummy; } ;


 int TB_CFG_COUNTERS ;
 int tb_port_dbg (struct tb_port*,char*,int) ;
 int tb_port_write (struct tb_port*,int *,int ,int,int) ;

int tb_port_clear_counter(struct tb_port *port, int counter)
{
 u32 zero[3] = { 0, 0, 0 };
 tb_port_dbg(port, "clearing counter %d\n", counter);
 return tb_port_write(port, zero, TB_CFG_COUNTERS, 3 * counter, 3);
}
