
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; scalar_t__ link; } ;
struct n_tty_data {int dummy; } ;


 int n_tty_packet_mode_flush (struct tty_struct*) ;
 int vfree (struct n_tty_data*) ;

__attribute__((used)) static void n_tty_close(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 if (tty->link)
  n_tty_packet_mode_flush(tty);

 vfree(ldata);
 tty->disc_data = ((void*)0);
}
