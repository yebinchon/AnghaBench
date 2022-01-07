
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int termios_rwsem; scalar_t__ link; int disc_data; } ;


 int down_write (int *) ;
 int n_tty_kick_worker (struct tty_struct*) ;
 int n_tty_packet_mode_flush (struct tty_struct*) ;
 int reset_buffer_flags (int ) ;
 int up_write (int *) ;

__attribute__((used)) static void n_tty_flush_buffer(struct tty_struct *tty)
{
 down_write(&tty->termios_rwsem);
 reset_buffer_flags(tty->disc_data);
 n_tty_kick_worker(tty);

 if (tty->link)
  n_tty_packet_mode_flush(tty);
 up_write(&tty->termios_rwsem);
}
