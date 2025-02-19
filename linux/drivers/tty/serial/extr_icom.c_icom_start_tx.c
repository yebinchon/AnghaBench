
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int CmdReg; } ;


 unsigned char CMD_HOLD_XMIT ;
 TYPE_2__* ICOM_PORT ;
 int icom_write (struct uart_port*) ;
 unsigned char readb (int *) ;
 int trace (TYPE_2__*,char*,int ) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void icom_start_tx(struct uart_port *port)
{
 unsigned char cmdReg;

 trace(ICOM_PORT, "START", 0);
 cmdReg = readb(&ICOM_PORT->dram->CmdReg);
 if ((cmdReg & CMD_HOLD_XMIT) == CMD_HOLD_XMIT)
  writeb(cmdReg & ~CMD_HOLD_XMIT,
         &ICOM_PORT->dram->CmdReg);

 icom_write(port);
}
