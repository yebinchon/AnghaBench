
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dsr; int rng; } ;
struct TYPE_12__ {TYPE_4__* state; TYPE_2__ icount; TYPE_1__* ops; } ;
struct sa1100_port {unsigned int old_status; TYPE_5__ port; } ;
struct TYPE_10__ {int delta_msr_wait; } ;
struct TYPE_11__ {TYPE_3__ port; } ;
struct TYPE_8__ {unsigned int (* get_mctrl ) (TYPE_5__*) ;} ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RI ;
 unsigned int stub1 (TYPE_5__*) ;
 int uart_handle_cts_change (TYPE_5__*,unsigned int) ;
 int uart_handle_dcd_change (TYPE_5__*,unsigned int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void sa1100_mctrl_check(struct sa1100_port *sport)
{
 unsigned int status, changed;

 status = sport->port.ops->get_mctrl(&sport->port);
 changed = status ^ sport->old_status;

 if (changed == 0)
  return;

 sport->old_status = status;

 if (changed & TIOCM_RI)
  sport->port.icount.rng++;
 if (changed & TIOCM_DSR)
  sport->port.icount.dsr++;
 if (changed & TIOCM_CAR)
  uart_handle_dcd_change(&sport->port, status & TIOCM_CAR);
 if (changed & TIOCM_CTS)
  uart_handle_cts_change(&sport->port, status & TIOCM_CTS);

 wake_up_interruptible(&sport->port.state->port.delta_msr_wait);
}
