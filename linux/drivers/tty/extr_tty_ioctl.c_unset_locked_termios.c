
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {scalar_t__* c_cc; scalar_t__ c_line; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct tty_struct {struct ktermios termios_locked; struct ktermios termios; } ;


 int NCCS ;
 int NOSET_MASK (int ,int ,int ) ;

__attribute__((used)) static void unset_locked_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct ktermios *termios = &tty->termios;
 struct ktermios *locked = &tty->termios_locked;
 int i;



 (termios->c_iflag = ((termios->c_iflag) & ~(locked->c_iflag)) | ((old->c_iflag) & (locked->c_iflag)));
 (termios->c_oflag = ((termios->c_oflag) & ~(locked->c_oflag)) | ((old->c_oflag) & (locked->c_oflag)));
 (termios->c_cflag = ((termios->c_cflag) & ~(locked->c_cflag)) | ((old->c_cflag) & (locked->c_cflag)));
 (termios->c_lflag = ((termios->c_lflag) & ~(locked->c_lflag)) | ((old->c_lflag) & (locked->c_lflag)));
 termios->c_line = locked->c_line ? old->c_line : termios->c_line;
 for (i = 0; i < NCCS; i++)
  termios->c_cc[i] = locked->c_cc[i] ?
   old->c_cc[i] : termios->c_cc[i];

}
