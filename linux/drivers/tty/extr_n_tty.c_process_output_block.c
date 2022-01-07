
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; struct n_tty_data* disc_data; } ;
struct n_tty_data {int output_lock; int column; int canon_column; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,unsigned char const*,int) ;} ;


 int O_OCRNL (struct tty_struct*) ;
 int O_OLCUC (struct tty_struct*) ;
 int O_ONLCR (struct tty_struct*) ;
 int O_ONLRET (struct tty_struct*) ;
 int O_ONOCR (struct tty_struct*) ;
 int is_continuation (unsigned char,struct tty_struct*) ;
 int iscntrl (unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*,unsigned char const*,int) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static ssize_t process_output_block(struct tty_struct *tty,
        const unsigned char *buf, unsigned int nr)
{
 struct n_tty_data *ldata = tty->disc_data;
 int space;
 int i;
 const unsigned char *cp;

 mutex_lock(&ldata->output_lock);

 space = tty_write_room(tty);
 if (space <= 0) {
  mutex_unlock(&ldata->output_lock);
  return space;
 }
 if (nr > space)
  nr = space;

 for (i = 0, cp = buf; i < nr; i++, cp++) {
  unsigned char c = *cp;

  switch (c) {
  case '\n':
   if (O_ONLRET(tty))
    ldata->column = 0;
   if (O_ONLCR(tty))
    goto break_out;
   ldata->canon_column = ldata->column;
   break;
  case '\r':
   if (O_ONOCR(tty) && ldata->column == 0)
    goto break_out;
   if (O_OCRNL(tty))
    goto break_out;
   ldata->canon_column = ldata->column = 0;
   break;
  case '\t':
   goto break_out;
  case '\b':
   if (ldata->column > 0)
    ldata->column--;
   break;
  default:
   if (!iscntrl(c)) {
    if (O_OLCUC(tty))
     goto break_out;
    if (!is_continuation(c, tty))
     ldata->column++;
   }
   break;
  }
 }
break_out:
 i = tty->ops->write(tty, buf, i);

 mutex_unlock(&ldata->output_lock);
 return i;
}
