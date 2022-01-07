
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int tty_encode_baud_rate (struct tty_struct*,int,int) ;

__attribute__((used)) static void spcp8x5_init_termios(struct tty_struct *tty)
{
 tty_encode_baud_rate(tty, 115200, 115200);
}
