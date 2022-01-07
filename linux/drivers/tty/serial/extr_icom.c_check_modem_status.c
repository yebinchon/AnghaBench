
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dsr; int rng; } ;
struct TYPE_11__ {int lock; TYPE_4__* state; TYPE_2__ icount; } ;
struct icom_port {TYPE_5__ uart_port; TYPE_1__* dram; } ;
struct TYPE_9__ {int delta_msr_wait; } ;
struct TYPE_10__ {TYPE_3__ port; } ;
struct TYPE_7__ {int isr; } ;


 char ICOM_CTS ;
 char ICOM_DCD ;
 char ICOM_DSR ;
 char ICOM_RI ;
 unsigned char readb (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace (struct icom_port*,char*,unsigned char) ;
 int uart_handle_cts_change (TYPE_5__*,char) ;
 int uart_handle_dcd_change (TYPE_5__*,char) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void check_modem_status(struct icom_port *icom_port)
{
 static char old_status = 0;
 char delta_status;
 unsigned char status;

 spin_lock(&icom_port->uart_port.lock);


 status = readb(&icom_port->dram->isr);
 trace(icom_port, "CHECK_MODEM", status);
 delta_status = status ^ old_status;
 if (delta_status) {
  if (delta_status & ICOM_RI)
   icom_port->uart_port.icount.rng++;
  if (delta_status & ICOM_DSR)
   icom_port->uart_port.icount.dsr++;
  if (delta_status & ICOM_DCD)
   uart_handle_dcd_change(&icom_port->uart_port,
            delta_status & ICOM_DCD);
  if (delta_status & ICOM_CTS)
   uart_handle_cts_change(&icom_port->uart_port,
            delta_status & ICOM_CTS);

  wake_up_interruptible(&icom_port->uart_port.state->
          port.delta_msr_wait);
  old_status = status;
 }
 spin_unlock(&icom_port->uart_port.lock);
}
