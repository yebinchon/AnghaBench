
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; unsigned int msr_saved_flags; TYPE_1__ port; } ;


 unsigned int LSR_SAVE_FLAGS ;
 unsigned int MSR_SAVE_FLAGS ;
 int UART_LSR ;
 int UART_MSR ;
 unsigned int UART_MSR_CTS ;
 int UPF_CONS_FLOW ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int touch_nmi_watchdog () ;
 int udelay (int) ;

__attribute__((used)) static void wait_for_xmitr(struct uart_8250_port *up, int bits)
{
 unsigned int status, tmout = 10000;


 for (;;) {
  status = serial_in(up, UART_LSR);

  up->lsr_saved_flags |= status & LSR_SAVE_FLAGS;

  if ((status & bits) == bits)
   break;
  if (--tmout == 0)
   break;
  udelay(1);
  touch_nmi_watchdog();
 }


 if (up->port.flags & UPF_CONS_FLOW) {
  for (tmout = 1000000; tmout; tmout--) {
   unsigned int msr = serial_in(up, UART_MSR);
   up->msr_saved_flags |= msr & MSR_SAVE_FLAGS;
   if (msr & UART_MSR_CTS)
    break;
   udelay(1);
   touch_nmi_watchdog();
  }
 }
}
