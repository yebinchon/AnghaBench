
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dram; } ;
struct TYPE_3__ {int CmdReg; } ;


 unsigned char CMD_RCV_ENABLE ;
 TYPE_2__* ICOM_PORT ;
 unsigned char readb (int *) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void icom_stop_rx(struct uart_port *port)
{
 unsigned char cmdReg;

 cmdReg = readb(&ICOM_PORT->dram->CmdReg);
 writeb(cmdReg & ~CMD_RCV_ENABLE, &ICOM_PORT->dram->CmdReg);
}
