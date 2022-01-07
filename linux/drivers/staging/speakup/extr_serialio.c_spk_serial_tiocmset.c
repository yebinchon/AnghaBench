
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_tts; } ;


 scalar_t__ UART_MCR ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 TYPE_1__ speakup_info ;

__attribute__((used)) static void spk_serial_tiocmset(unsigned int set, unsigned int clear)
{
 int old = inb(speakup_info.port_tts + UART_MCR);

 outb((old & ~clear) | set, speakup_info.port_tts + UART_MCR);
}
