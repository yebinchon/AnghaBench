
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* port; int flags; struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ no_room; } ;
struct TYPE_2__ {int * itty; } ;


 int TTY_LDISC_HALTED ;
 int WARN_RATELIMIT (int ,char*) ;
 int test_bit (int ,int *) ;
 int tty_buffer_restart_work (TYPE_1__*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void n_tty_kick_worker(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;


 if (unlikely(ldata->no_room)) {
  ldata->no_room = 0;

  WARN_RATELIMIT(tty->port->itty == ((void*)0),
    "scheduling with invalid itty\n");




  WARN_RATELIMIT(test_bit(TTY_LDISC_HALTED, &tty->flags),
          "scheduling buffer work for halted ldisc\n");
  tty_buffer_restart_work(tty->port);
 }
}
