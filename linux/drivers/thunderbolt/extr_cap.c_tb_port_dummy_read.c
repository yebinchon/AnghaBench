
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_port {int sw; } ;


 int TB_CFG_PORT ;
 int tb_port_read (struct tb_port*,int *,int ,int ,int) ;
 scalar_t__ tb_switch_is_lr (int ) ;

__attribute__((used)) static void tb_port_dummy_read(struct tb_port *port)
{






 if (tb_switch_is_lr(port->sw)) {
  u32 dummy;

  tb_port_read(port, &dummy, TB_CFG_PORT, 0, 1);
 }
}
