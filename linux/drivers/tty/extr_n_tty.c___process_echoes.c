
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {size_t echo_tail; size_t echo_commit; unsigned int canon_column; unsigned int column; } ;


 size_t ECHO_DISCARD_WATERMARK ;




 scalar_t__ MASK (size_t) ;
 scalar_t__ O_OPOST (struct tty_struct*) ;
 int do_output_char (unsigned char,struct tty_struct*,int) ;
 int const echo_buf (struct n_tty_data*,size_t) ;
 int tty_put_char (struct tty_struct*,unsigned char const) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static size_t __process_echoes(struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;
 int space, old_space;
 size_t tail;
 unsigned char c;

 old_space = space = tty_write_room(tty);

 tail = ldata->echo_tail;
 while (MASK(ldata->echo_commit) != MASK(tail)) {
  c = echo_buf(ldata, tail);
  if (c == 128) {
   unsigned char op;
   int no_space_left = 0;






   if (MASK(ldata->echo_commit) == MASK(tail + 1))
    goto not_yet_stored;





   op = echo_buf(ldata, tail + 1);

   switch (op) {
    unsigned int num_chars, num_bs;

   case 131:
    if (MASK(ldata->echo_commit) == MASK(tail + 2))
     goto not_yet_stored;
    num_chars = echo_buf(ldata, tail + 2);
    if (!(num_chars & 0x80))
     num_chars += ldata->canon_column;
    num_bs = 8 - (num_chars & 7);

    if (num_bs > space) {
     no_space_left = 1;
     break;
    }
    space -= num_bs;
    while (num_bs--) {
     tty_put_char(tty, '\b');
     if (ldata->column > 0)
      ldata->column--;
    }
    tail += 3;
    break;

   case 129:
    ldata->canon_column = ldata->column;
    tail += 2;
    break;

   case 130:
    if (ldata->column > 0)
     ldata->column--;
    tail += 2;
    break;

   case 128:

    if (!space) {
     no_space_left = 1;
     break;
    }
    tty_put_char(tty, 128);
    ldata->column++;
    space--;
    tail += 2;
    break;

   default:
    if (space < 2) {
     no_space_left = 1;
     break;
    }
    tty_put_char(tty, '^');
    tty_put_char(tty, op ^ 0100);
    ldata->column += 2;
    space -= 2;
    tail += 2;
   }

   if (no_space_left)
    break;
  } else {
   if (O_OPOST(tty)) {
    int retval = do_output_char(c, tty, space);
    if (retval < 0)
     break;
    space -= retval;
   } else {
    if (!space)
     break;
    tty_put_char(tty, c);
    space -= 1;
   }
   tail += 1;
  }
 }




 while (ldata->echo_commit > tail &&
        ldata->echo_commit - tail >= ECHO_DISCARD_WATERMARK) {
  if (echo_buf(ldata, tail) == 128) {
   if (echo_buf(ldata, tail + 1) == 131)
    tail += 3;
   else
    tail += 2;
  } else
   tail++;
 }

 not_yet_stored:
 ldata->echo_tail = tail;
 return old_space - space;
}
