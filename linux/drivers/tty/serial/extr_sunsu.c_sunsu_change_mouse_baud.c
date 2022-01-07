
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; } ;
struct uart_sunsu_port {unsigned int cflag; TYPE_1__ port; } ;


 unsigned int CBAUD ;
 unsigned int suncore_mouse_baud_cflag_next (unsigned int,int*) ;
 int sunsu_change_speed (TYPE_1__*,unsigned int,int ,int) ;

__attribute__((used)) static void sunsu_change_mouse_baud(struct uart_sunsu_port *up)
{
 unsigned int cur_cflag = up->cflag;
 int quot, new_baud;

 up->cflag &= ~CBAUD;
 up->cflag |= suncore_mouse_baud_cflag_next(cur_cflag, &new_baud);

 quot = up->port.uartclk / (16 * new_baud);

 sunsu_change_speed(&up->port, up->cflag, 0, quot);
}
