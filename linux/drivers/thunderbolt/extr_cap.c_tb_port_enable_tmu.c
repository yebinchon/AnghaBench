
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int dummy; } ;
struct tb_port {struct tb_switch* sw; } ;


 int TB_CFG_SWITCH ;
 int TMU_ACCESS_EN ;
 int tb_sw_read (struct tb_switch*,int*,int ,int,int) ;
 int tb_sw_write (struct tb_switch*,int*,int ,int,int) ;
 scalar_t__ tb_switch_is_er (struct tb_switch*) ;
 scalar_t__ tb_switch_is_lr (struct tb_switch*) ;

__attribute__((used)) static int tb_port_enable_tmu(struct tb_port *port, bool enable)
{
 struct tb_switch *sw = port->sw;
 u32 value, offset;
 int ret;





 if (tb_switch_is_lr(sw))
  offset = 0x26;
 else if (tb_switch_is_er(sw))
  offset = 0x2a;
 else
  return 0;

 ret = tb_sw_read(sw, &value, TB_CFG_SWITCH, offset, 1);
 if (ret)
  return ret;

 if (enable)
  value |= TMU_ACCESS_EN;
 else
  value &= ~TMU_ACCESS_EN;

 return tb_sw_write(sw, &value, TB_CFG_SWITCH, offset, 1);
}
