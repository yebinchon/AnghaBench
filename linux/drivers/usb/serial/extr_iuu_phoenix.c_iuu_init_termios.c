
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; int c_ispeed; int c_ospeed; scalar_t__ c_iflag; scalar_t__ c_oflag; scalar_t__ c_lflag; } ;
struct tty_struct {TYPE_1__ termios; } ;


 int B9600 ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int CSTOPB ;
 int PARENB ;

__attribute__((used)) static void iuu_init_termios(struct tty_struct *tty)
{
 tty->termios.c_cflag = B9600 | CS8 | CSTOPB | CREAD | PARENB | CLOCAL;
 tty->termios.c_ispeed = 9600;
 tty->termios.c_ospeed = 9600;
 tty->termios.c_lflag = 0;
 tty->termios.c_oflag = 0;
 tty->termios.c_iflag = 0;
}
