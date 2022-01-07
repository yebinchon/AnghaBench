
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int read_wait; int fasync; TYPE_1__* ops; scalar_t__ closing; struct n_tty_data* disc_data; } ;
struct n_tty_data {int read_head; int commit_head; scalar_t__ icanon; scalar_t__ lnext; scalar_t__ raw; scalar_t__ real_raw; } ;
struct TYPE_2__ {int (* flush_chars ) (struct tty_struct*) ;} ;


 int EPOLLIN ;
 scalar_t__ I_ISTRIP (struct tty_struct*) ;
 scalar_t__ I_IUCLC (struct tty_struct*) ;
 int I_PARMRK (struct tty_struct*) ;
 scalar_t__ L_EXTPROC (struct tty_struct*) ;
 scalar_t__ L_IEXTEN (struct tty_struct*) ;
 int POLL_IN ;
 int SIGIO ;
 char TTY_NORMAL ;
 int flush_echoes (struct tty_struct*) ;
 int kill_fasync (int *,int ,int ) ;
 int n_tty_receive_buf_closing (struct tty_struct*,unsigned char const*,char*,int) ;
 int n_tty_receive_buf_fast (struct tty_struct*,unsigned char const*,char*,int) ;
 int n_tty_receive_buf_raw (struct tty_struct*,unsigned char const*,char*,int) ;
 int n_tty_receive_buf_real_raw (struct tty_struct*,unsigned char const*,char*,int) ;
 int n_tty_receive_buf_standard (struct tty_struct*,unsigned char const*,char*,int) ;
 int n_tty_receive_char_lnext (struct tty_struct*,int ,char) ;
 scalar_t__ read_cnt (struct n_tty_data*) ;
 int smp_store_release (int *,int ) ;
 int stub1 (struct tty_struct*) ;
 int wake_up_interruptible_poll (int *,int ) ;

__attribute__((used)) static void __receive_buf(struct tty_struct *tty, const unsigned char *cp,
     char *fp, int count)
{
 struct n_tty_data *ldata = tty->disc_data;
 bool preops = I_ISTRIP(tty) || (I_IUCLC(tty) && L_IEXTEN(tty));

 if (ldata->real_raw)
  n_tty_receive_buf_real_raw(tty, cp, fp, count);
 else if (ldata->raw || (L_EXTPROC(tty) && !preops))
  n_tty_receive_buf_raw(tty, cp, fp, count);
 else if (tty->closing && !L_EXTPROC(tty))
  n_tty_receive_buf_closing(tty, cp, fp, count);
 else {
  if (ldata->lnext) {
   char flag = TTY_NORMAL;

   if (fp)
    flag = *fp++;
   n_tty_receive_char_lnext(tty, *cp++, flag);
   count--;
  }

  if (!preops && !I_PARMRK(tty))
   n_tty_receive_buf_fast(tty, cp, fp, count);
  else
   n_tty_receive_buf_standard(tty, cp, fp, count);

  flush_echoes(tty);
  if (tty->ops->flush_chars)
   tty->ops->flush_chars(tty);
 }

 if (ldata->icanon && !L_EXTPROC(tty))
  return;


 smp_store_release(&ldata->commit_head, ldata->read_head);

 if (read_cnt(ldata)) {
  kill_fasync(&tty->fasync, SIGIO, POLL_IN);
  wake_up_interruptible_poll(&tty->read_wait, EPOLLIN);
 }
}
