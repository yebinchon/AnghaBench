
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct spk_ldisc_data* disc_data; TYPE_1__* ops; } ;
struct spk_ldisc_data {int buf_free; int completion; } ;
struct TYPE_2__ {int write; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int init_completion (int *) ;
 struct spk_ldisc_data* kmalloc (int,int ) ;
 struct tty_struct* speakup_tty ;

__attribute__((used)) static int spk_ttyio_ldisc_open(struct tty_struct *tty)
{
 struct spk_ldisc_data *ldisc_data;

 if (!tty->ops->write)
  return -EOPNOTSUPP;
 speakup_tty = tty;

 ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
 if (!ldisc_data)
  return -ENOMEM;

 init_completion(&ldisc_data->completion);
 ldisc_data->buf_free = 1;
 speakup_tty->disc_data = ldisc_data;

 return 0;
}
