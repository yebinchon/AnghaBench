
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spk_synth {scalar_t__ alive; int long_name; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* write ) (TYPE_2__*,char const*,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int ) ;
 int speakup_start_ttys () ;
 TYPE_2__* speakup_tty ;
 int speakup_tty_mutex ;
 int stub1 (TYPE_2__*,char const*,int) ;

__attribute__((used)) static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
{
 mutex_lock(&speakup_tty_mutex);
 if (in_synth->alive && speakup_tty && speakup_tty->ops->write) {
  int ret = speakup_tty->ops->write(speakup_tty, &ch, 1);

  mutex_unlock(&speakup_tty_mutex);
  if (ret == 0)

   return 0;
  if (ret < 0) {
   pr_warn("%s: I/O error, deactivating speakup\n",
    in_synth->long_name);




   in_synth->alive = 0;
   speakup_start_ttys();
   return 0;
  }
  return 1;
 }

 mutex_unlock(&speakup_tty_mutex);
 return 0;
}
