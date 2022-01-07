
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ num_overrun; scalar_t__ overrun_time; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int tty_warn (struct tty_struct*,char*,scalar_t__) ;

__attribute__((used)) static void n_tty_receive_overrun(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;

 ldata->num_overrun++;
 if (time_after(jiffies, ldata->overrun_time + HZ) ||
   time_after(ldata->overrun_time, jiffies)) {
  tty_warn(tty, "%d input overrun(s)\n", ldata->num_overrun);
  ldata->overrun_time = jiffies;
  ldata->num_overrun = 0;
 }
}
