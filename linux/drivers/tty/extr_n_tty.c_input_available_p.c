
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ canon_head; scalar_t__ read_tail; int commit_head; scalar_t__ icanon; } ;


 int L_EXTPROC (struct tty_struct*) ;
 int MIN_CHAR (struct tty_struct*) ;
 int TIME_CHAR (struct tty_struct*) ;

__attribute__((used)) static inline int input_available_p(struct tty_struct *tty, int poll)
{
 struct n_tty_data *ldata = tty->disc_data;
 int amt = poll && !TIME_CHAR(tty) && MIN_CHAR(tty) ? MIN_CHAR(tty) : 1;

 if (ldata->icanon && !L_EXTPROC(tty))
  return ldata->canon_head != ldata->read_tail;
 else
  return ldata->commit_head - ldata->read_tail >= amt;
}
