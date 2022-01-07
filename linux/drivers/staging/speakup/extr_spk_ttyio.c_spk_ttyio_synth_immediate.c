
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u_char ;
struct spk_synth {char procspeech; TYPE_1__* io_ops; } ;
struct TYPE_2__ {int (* synth_out ) (struct spk_synth*,char) ;} ;


 int speakup_tty ;
 int stub1 (struct spk_synth*,char) ;
 int tty_write_room (int ) ;

const char *spk_ttyio_synth_immediate(struct spk_synth *synth, const char *buff)
{
 u_char ch;

 while ((ch = *buff)) {
  if (ch == '\n')
   ch = synth->procspeech;
  if (tty_write_room(speakup_tty) < 1 ||
      !synth->io_ops->synth_out(synth, ch))
   return buff;
  buff++;
 }
 return ((void*)0);
}
