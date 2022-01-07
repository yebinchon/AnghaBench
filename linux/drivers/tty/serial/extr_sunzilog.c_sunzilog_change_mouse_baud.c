
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {unsigned int cflag; int* curregs; int port; } ;


 int BPS_TO_BRG (int,int) ;
 unsigned int CBAUD ;
 size_t R12 ;
 size_t R13 ;
 int ZILOG_CHANNEL_FROM_PORT (int *) ;
 int ZS_CLOCK ;
 int ZS_CLOCK_DIVISOR ;
 unsigned int suncore_mouse_baud_cflag_next (unsigned int,int*) ;
 int sunzilog_maybe_update_regs (struct uart_sunzilog_port*,int ) ;

__attribute__((used)) static void sunzilog_change_mouse_baud(struct uart_sunzilog_port *up)
{
 unsigned int cur_cflag = up->cflag;
 int brg, new_baud;

 up->cflag &= ~CBAUD;
 up->cflag |= suncore_mouse_baud_cflag_next(cur_cflag, &new_baud);

 brg = BPS_TO_BRG(new_baud, ZS_CLOCK / ZS_CLOCK_DIVISOR);
 up->curregs[R12] = (brg & 0xff);
 up->curregs[R13] = (brg >> 8) & 0xff;
 sunzilog_maybe_update_regs(up, ZILOG_CHANNEL_FROM_PORT(&up->port));
}
