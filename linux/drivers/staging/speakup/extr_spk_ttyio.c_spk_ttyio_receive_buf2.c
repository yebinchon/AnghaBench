
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct spk_ldisc_data* disc_data; } ;
struct spk_ldisc_data {int buf_free; unsigned char buf; int completion; } ;
struct TYPE_2__ {int (* read_buff_add ) (unsigned char const) ;} ;


 int complete (int *) ;
 int mb () ;
 TYPE_1__* spk_ttyio_synth ;
 int stub1 (unsigned char const) ;

__attribute__((used)) static int spk_ttyio_receive_buf2(struct tty_struct *tty,
      const unsigned char *cp, char *fp, int count)
{
 struct spk_ldisc_data *ldisc_data = tty->disc_data;

 if (spk_ttyio_synth->read_buff_add) {
  int i;

  for (i = 0; i < count; i++)
   spk_ttyio_synth->read_buff_add(cp[i]);

  return count;
 }

 if (!ldisc_data->buf_free)

  return 0;




 mb();

 ldisc_data->buf = cp[0];
 ldisc_data->buf_free = 0;
 complete(&ldisc_data->completion);

 return 1;
}
