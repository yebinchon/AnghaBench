
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; int c_oflag; scalar_t__ c_lflag; } ;
struct tty_struct {TYPE_1__ termios; } ;


 int ECHO ;
 int ICANON ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNPAR ;
 int ISIG ;
 int IXOFF ;
 int ONLCR ;
 int XCASE ;

__attribute__((used)) static void kobil_init_termios(struct tty_struct *tty)
{

 tty->termios.c_lflag = 0;
 tty->termios.c_iflag &= ~(ISIG | ICANON | ECHO | IEXTEN | XCASE);
 tty->termios.c_iflag |= IGNBRK | IGNPAR | IXOFF;

 tty->termios.c_oflag &= ~ONLCR;
}
