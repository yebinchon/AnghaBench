
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios; } ;
typedef int speed_t ;


 int tty_termios_encode_baud_rate (int *,int ,int ) ;

void tty_encode_baud_rate(struct tty_struct *tty, speed_t ibaud, speed_t obaud)
{
 tty_termios_encode_baud_rate(&tty->termios, ibaud, obaud);
}
