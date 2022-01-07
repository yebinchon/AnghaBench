
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int lock; } ;
struct icom_port {TYPE_1__ uart_port; } ;


 int INT_RCV_COMPLETED ;
 int INT_XMIT_COMPLETED ;
 int INT_XMIT_DISABLED ;
 int recv_interrupt (int,struct icom_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace (struct icom_port*,char*,int) ;
 int xmit_interrupt (int,struct icom_port*) ;

__attribute__((used)) static void process_interrupt(u16 port_int_reg,
         struct icom_port *icom_port)
{

 spin_lock(&icom_port->uart_port.lock);
 trace(icom_port, "INTERRUPT", port_int_reg);

 if (port_int_reg & (INT_XMIT_COMPLETED | INT_XMIT_DISABLED))
  xmit_interrupt(port_int_reg, icom_port);

 if (port_int_reg & INT_RCV_COMPLETED)
  recv_interrupt(port_int_reg, icom_port);

 spin_unlock(&icom_port->uart_port.lock);
}
