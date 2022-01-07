
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {int serio; scalar_t__ serio_open; } ;


 scalar_t__ ZS_IS_KEYB (struct uart_sunzilog_port*) ;
 scalar_t__ ZS_IS_MOUSE (struct uart_sunzilog_port*) ;
 int serio_interrupt (int *,unsigned char,int ) ;
 int suncore_mouse_baud_detection (unsigned char,int) ;
 int sunzilog_change_mouse_baud (struct uart_sunzilog_port*) ;

__attribute__((used)) static void sunzilog_kbdms_receive_chars(struct uart_sunzilog_port *up,
      unsigned char ch, int is_break)
{
 if (ZS_IS_KEYB(up)) {





 } else if (ZS_IS_MOUSE(up)) {
  int ret = suncore_mouse_baud_detection(ch, is_break);

  switch (ret) {
  case 2:
   sunzilog_change_mouse_baud(up);

  case 1:
   break;

  case 0:




   break;
  }
 }
}
