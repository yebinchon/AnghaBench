
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; size_t type; int lock; int fifosize; int iotype; } ;
struct uart_sunsu_port {scalar_t__ su_type; void* type_probed; TYPE_1__ port; } ;
struct TYPE_4__ {int dfl_xmit_fifo_size; } ;


 size_t PORT_16450 ;
 size_t PORT_16550 ;
 size_t PORT_16550A ;
 size_t PORT_16650 ;
 size_t PORT_16650V2 ;
 size_t PORT_16750 ;
 size_t PORT_8250 ;
 void* PORT_RSA ;
 void* PORT_UNKNOWN ;
 scalar_t__ SU_PORT_NONE ;
 int UART_EFR ;
 int UART_FCR ;
 unsigned char UART_FCR7_64BYTE ;
 unsigned char UART_FCR_CLEAR_RCVR ;
 unsigned char UART_FCR_CLEAR_XMIT ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 int UART_IER ;
 int UART_IIR ;
 int UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 int UART_MCR ;
 int UART_MCR_LOOP ;
 int UART_MSR ;
 int UART_RSA_FRR ;
 int UART_RX ;
 int UART_SCR ;
 int UPF_BUGGY_UART ;
 int UPF_SKIP_TEST ;
 int UPIO_MEM ;
 int outb (int,int) ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 int serial_inp (struct uart_sunsu_port*,int ) ;
 int serial_outp (struct uart_sunsu_port*,int ,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* uart_config ;

__attribute__((used)) static void sunsu_autoconfig(struct uart_sunsu_port *up)
{
 unsigned char status1, status2, scratch, scratch2, scratch3;
 unsigned char save_lcr, save_mcr;
 unsigned long flags;

 if (up->su_type == SU_PORT_NONE)
  return;

 up->type_probed = PORT_UNKNOWN;
 up->port.iotype = UPIO_MEM;

 spin_lock_irqsave(&up->port.lock, flags);

 if (!(up->port.flags & UPF_BUGGY_UART)) {
  scratch = serial_inp(up, UART_IER);
  serial_outp(up, UART_IER, 0);



  scratch2 = serial_inp(up, UART_IER);
  serial_outp(up, UART_IER, 0x0f);



  scratch3 = serial_inp(up, UART_IER);
  serial_outp(up, UART_IER, scratch);
  if (scratch2 != 0 || scratch3 != 0x0F)
   goto out;
 }

 save_mcr = serial_in(up, UART_MCR);
 save_lcr = serial_in(up, UART_LCR);
 if (!(up->port.flags & UPF_SKIP_TEST)) {
  serial_outp(up, UART_MCR, UART_MCR_LOOP | 0x0A);
  status1 = serial_inp(up, UART_MSR) & 0xF0;
  serial_outp(up, UART_MCR, save_mcr);
  if (status1 != 0x90)
   goto out;
 }
 serial_outp(up, UART_LCR, 0xBF);
 serial_outp(up, UART_EFR, 0);
 serial_outp(up, UART_LCR, 0);
 serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 scratch = serial_in(up, UART_IIR) >> 6;
 switch (scratch) {
  case 0:
   up->port.type = PORT_16450;
   break;
  case 1:
   up->port.type = PORT_UNKNOWN;
   break;
  case 2:
   up->port.type = PORT_16550;
   break;
  case 3:
   up->port.type = PORT_16550A;
   break;
 }
 if (up->port.type == PORT_16550A) {

  serial_outp(up, UART_LCR, UART_LCR_DLAB);
  if (serial_in(up, UART_EFR) == 0) {
   up->port.type = PORT_16650;
  } else {
   serial_outp(up, UART_LCR, 0xBF);
   if (serial_in(up, UART_EFR) == 0)
    up->port.type = PORT_16650V2;
  }
 }
 if (up->port.type == PORT_16550A) {

  serial_outp(up, UART_LCR, save_lcr | UART_LCR_DLAB);
  serial_outp(up, UART_FCR,
       UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
  scratch = serial_in(up, UART_IIR) >> 5;
  if (scratch == 7) {






    serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
   serial_outp(up, UART_LCR, 0);
   serial_outp(up, UART_FCR,
        UART_FCR_ENABLE_FIFO | UART_FCR7_64BYTE);
   scratch = serial_in(up, UART_IIR) >> 5;
   if (scratch == 6)
    up->port.type = PORT_16750;
  }
  serial_outp(up, UART_FCR, UART_FCR_ENABLE_FIFO);
 }
 serial_outp(up, UART_LCR, save_lcr);
 if (up->port.type == PORT_16450) {
  scratch = serial_in(up, UART_SCR);
  serial_outp(up, UART_SCR, 0xa5);
  status1 = serial_in(up, UART_SCR);
  serial_outp(up, UART_SCR, 0x5a);
  status2 = serial_in(up, UART_SCR);
  serial_outp(up, UART_SCR, scratch);

  if ((status1 != 0xa5) || (status2 != 0x5a))
   up->port.type = PORT_8250;
 }

 up->port.fifosize = uart_config[up->port.type].dfl_xmit_fifo_size;

 if (up->port.type == PORT_UNKNOWN)
  goto out;
 up->type_probed = up->port.type;
 serial_outp(up, UART_MCR, save_mcr);
 serial_outp(up, UART_FCR, (UART_FCR_ENABLE_FIFO |
         UART_FCR_CLEAR_RCVR |
         UART_FCR_CLEAR_XMIT));
 serial_outp(up, UART_FCR, 0);
 (void)serial_in(up, UART_RX);
 serial_outp(up, UART_IER, 0);

out:
 spin_unlock_irqrestore(&up->port.lock, flags);
}
