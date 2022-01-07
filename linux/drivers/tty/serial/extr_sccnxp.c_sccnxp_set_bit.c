
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {size_t line; int dev; } ;
struct TYPE_2__ {int* mctrl_cfg; } ;
struct sccnxp_port {TYPE_1__ pdata; } ;


 int MCTRL_MASK (int) ;
 int MCTRL_OBIT (int,int) ;
 int SCCNXP_ROP_REG ;
 int SCCNXP_SOP_REG ;
 struct sccnxp_port* dev_get_drvdata (int ) ;
 int sccnxp_write (struct uart_port*,int ,int) ;

__attribute__((used)) static void sccnxp_set_bit(struct uart_port *port, int sig, int state)
{
 u8 bitmask;
 struct sccnxp_port *s = dev_get_drvdata(port->dev);

 if (s->pdata.mctrl_cfg[port->line] & MCTRL_MASK(sig)) {
  bitmask = 1 << MCTRL_OBIT(s->pdata.mctrl_cfg[port->line], sig);
  if (state)
   sccnxp_write(port, SCCNXP_SOP_REG, bitmask);
  else
   sccnxp_write(port, SCCNXP_ROP_REG, bitmask);
 }
}
