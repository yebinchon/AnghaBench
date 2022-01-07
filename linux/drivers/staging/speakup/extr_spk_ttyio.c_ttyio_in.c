
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_ldisc_data {char buf; int buf_free; int completion; } ;
struct TYPE_2__ {int port; struct spk_ldisc_data* disc_data; } ;


 int mb () ;
 int pr_warn (char*,int) ;
 TYPE_1__* speakup_tty ;
 int tty_schedule_flip (int ) ;
 int usecs_to_jiffies (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static unsigned char ttyio_in(int timeout)
{
 struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
 char rv;

 if (wait_for_completion_timeout(&ldisc_data->completion,
     usecs_to_jiffies(timeout)) == 0) {
  if (timeout)
   pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
    timeout);
  return 0xff;
 }

 rv = ldisc_data->buf;



 mb();
 ldisc_data->buf_free = 1;

 tty_schedule_flip(speakup_tty->port);

 return rv;
}
