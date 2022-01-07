
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_port {int dummy; } ;


 int TB_CFG_PORT ;
 int TB_PORT_LCA_MASK ;
 int TB_PORT_LCA_SHIFT ;
 int tb_port_read (struct tb_port*,int*,int ,int,int) ;
 int tb_port_write (struct tb_port*,int*,int ,int,int) ;

int tb_port_set_initial_credits(struct tb_port *port, u32 credits)
{
 u32 data;
 int ret;

 ret = tb_port_read(port, &data, TB_CFG_PORT, 5, 1);
 if (ret)
  return ret;

 data &= ~TB_PORT_LCA_MASK;
 data |= (credits << TB_PORT_LCA_SHIFT) & TB_PORT_LCA_MASK;

 return tb_port_write(port, &data, TB_CFG_PORT, 5, 1);
}
