
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int UARTDM_NCF_TX ;
 int msm_read (struct uart_port*,int ) ;
 int msm_wait_for_xmitr (struct uart_port*) ;
 int msm_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void msm_reset_dm_count(struct uart_port *port, int count)
{
 msm_wait_for_xmitr(port);
 msm_write(port, count, UARTDM_NCF_TX);
 msm_read(port, UARTDM_NCF_TX);
}
