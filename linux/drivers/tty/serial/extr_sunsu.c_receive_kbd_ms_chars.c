
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsu_port {scalar_t__ su_type; int serio; } ;


 scalar_t__ SU_PORT_KBD ;
 scalar_t__ SU_PORT_MS ;
 int UART_LSR ;
 int UART_LSR_DR ;
 int UART_RX ;
 int serial_in (struct uart_sunsu_port*,int ) ;
 unsigned char serial_inp (struct uart_sunsu_port*,int ) ;
 int serio_interrupt (int *,unsigned char,int ) ;
 int suncore_mouse_baud_detection (unsigned char,int) ;
 int sunsu_change_mouse_baud (struct uart_sunsu_port*) ;

__attribute__((used)) static void receive_kbd_ms_chars(struct uart_sunsu_port *up, int is_break)
{
 do {
  unsigned char ch = serial_inp(up, UART_RX);


  if (up->su_type == SU_PORT_KBD) {



  } else if (up->su_type == SU_PORT_MS) {
   int ret = suncore_mouse_baud_detection(ch, is_break);

   switch (ret) {
   case 2:
    sunsu_change_mouse_baud(up);

   case 1:
    break;

   case 0:



    break;
   }
  }
 } while (serial_in(up, UART_LSR) & UART_LSR_DR);
}
