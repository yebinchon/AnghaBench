
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 scalar_t__ I_IXON (struct tty_struct*) ;
 scalar_t__ L_ECHO (struct tty_struct*) ;
 int commit_echoes (struct tty_struct*) ;
 int echo_char (unsigned char,struct tty_struct*) ;
 int isig (int,struct tty_struct*) ;
 int process_echoes (struct tty_struct*) ;
 int start_tty (struct tty_struct*) ;

__attribute__((used)) static void
n_tty_receive_signal_char(struct tty_struct *tty, int signal, unsigned char c)
{
 isig(signal, tty);
 if (I_IXON(tty))
  start_tty(tty);
 if (L_ECHO(tty)) {
  echo_char(c, tty);
  commit_echoes(tty);
 } else
  process_echoes(tty);
 return;
}
