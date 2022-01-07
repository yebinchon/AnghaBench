
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dsr; int rng; } ;
struct TYPE_9__ {TYPE_2__* state; TYPE_3__ icount; } ;
struct uart_sunsu_port {TYPE_4__ port; } ;
struct TYPE_6__ {int delta_msr_wait; } ;
struct TYPE_7__ {TYPE_1__ port; } ;


 int UART_MSR ;
 int UART_MSR_ANY_DELTA ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_TERI ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 int uart_handle_cts_change (TYPE_4__*,int) ;
 int uart_handle_dcd_change (TYPE_4__*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void check_modem_status(struct uart_sunsu_port *up)
{
 int status;

 status = serial_in(up, UART_MSR);

 if ((status & UART_MSR_ANY_DELTA) == 0)
  return;

 if (status & UART_MSR_TERI)
  up->port.icount.rng++;
 if (status & UART_MSR_DDSR)
  up->port.icount.dsr++;
 if (status & UART_MSR_DDCD)
  uart_handle_dcd_change(&up->port, status & UART_MSR_DCD);
 if (status & UART_MSR_DCTS)
  uart_handle_cts_change(&up->port, status & UART_MSR_CTS);

 wake_up_interruptible(&up->port.state->port.delta_msr_wait);
}
