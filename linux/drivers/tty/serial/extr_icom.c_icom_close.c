
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_8__ {TYPE_2__* adapter; TYPE_1__* dram; } ;
struct TYPE_7__ {int kref; } ;
struct TYPE_6__ {int CmdReg; } ;


 unsigned char CMD_RCV_ENABLE ;
 TYPE_3__* ICOM_PORT ;
 int icom_kref_release ;
 int kref_put (int *,int ) ;
 unsigned char readb (int *) ;
 int shutdown (TYPE_3__*) ;
 int trace (TYPE_3__*,char*,int ) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void icom_close(struct uart_port *port)
{
 unsigned char cmdReg;

 trace(ICOM_PORT, "CLOSE", 0);


 cmdReg = readb(&ICOM_PORT->dram->CmdReg);
 writeb(cmdReg & ~CMD_RCV_ENABLE, &ICOM_PORT->dram->CmdReg);

 shutdown(ICOM_PORT);

 kref_put(&ICOM_PORT->adapter->kref, icom_kref_release);
}
