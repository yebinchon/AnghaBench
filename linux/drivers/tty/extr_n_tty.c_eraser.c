
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {size_t read_head; size_t canon_head; int erasing; } ;


 unsigned char ERASE_CHAR (struct tty_struct*) ;
 unsigned char KILL_CHAR (struct tty_struct*) ;
 scalar_t__ L_ECHO (struct tty_struct*) ;
 scalar_t__ L_ECHOCTL (struct tty_struct*) ;
 int L_ECHOE (struct tty_struct*) ;
 scalar_t__ L_ECHOK (struct tty_struct*) ;
 int L_ECHOKE (struct tty_struct*) ;
 scalar_t__ L_ECHOPRT (struct tty_struct*) ;
 scalar_t__ MASK (size_t) ;
 unsigned char WERASE_CHAR (struct tty_struct*) ;
 int echo_char (unsigned char,struct tty_struct*) ;
 int echo_char_raw (char,struct n_tty_data*) ;
 int echo_erase_tab (unsigned int,int,struct n_tty_data*) ;
 int echo_move_back_col (struct n_tty_data*) ;
 int finish_erasing (struct n_tty_data*) ;
 scalar_t__ is_continuation (unsigned char,struct tty_struct*) ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ iscntrl (unsigned char) ;
 char read_buf (struct n_tty_data*,size_t) ;

__attribute__((used)) static void eraser(unsigned char c, struct tty_struct *tty)
{
 struct n_tty_data *ldata = tty->disc_data;
 enum { ERASE, WERASE, KILL } kill_type;
 size_t head;
 size_t cnt;
 int seen_alnums;

 if (ldata->read_head == ldata->canon_head) {

  return;
 }
 if (c == ERASE_CHAR(tty))
  kill_type = ERASE;
 else if (c == WERASE_CHAR(tty))
  kill_type = WERASE;
 else {
  if (!L_ECHO(tty)) {
   ldata->read_head = ldata->canon_head;
   return;
  }
  if (!L_ECHOK(tty) || !L_ECHOKE(tty) || !L_ECHOE(tty)) {
   ldata->read_head = ldata->canon_head;
   finish_erasing(ldata);
   echo_char(KILL_CHAR(tty), tty);

   if (L_ECHOK(tty))
    echo_char_raw('\n', ldata);
   return;
  }
  kill_type = KILL;
 }

 seen_alnums = 0;
 while (MASK(ldata->read_head) != MASK(ldata->canon_head)) {
  head = ldata->read_head;


  do {
   head--;
   c = read_buf(ldata, head);
  } while (is_continuation(c, tty) &&
    MASK(head) != MASK(ldata->canon_head));


  if (is_continuation(c, tty))
   break;

  if (kill_type == WERASE) {

   if (isalnum(c) || c == '_')
    seen_alnums++;
   else if (seen_alnums)
    break;
  }
  cnt = ldata->read_head - head;
  ldata->read_head = head;
  if (L_ECHO(tty)) {
   if (L_ECHOPRT(tty)) {
    if (!ldata->erasing) {
     echo_char_raw('\\', ldata);
     ldata->erasing = 1;
    }

    echo_char(c, tty);
    while (--cnt > 0) {
     head++;
     echo_char_raw(read_buf(ldata, head), ldata);
     echo_move_back_col(ldata);
    }
   } else if (kill_type == ERASE && !L_ECHOE(tty)) {
    echo_char(ERASE_CHAR(tty), tty);
   } else if (c == '\t') {
    unsigned int num_chars = 0;
    int after_tab = 0;
    size_t tail = ldata->read_head;
    while (MASK(tail) != MASK(ldata->canon_head)) {
     tail--;
     c = read_buf(ldata, tail);
     if (c == '\t') {
      after_tab = 1;
      break;
     } else if (iscntrl(c)) {
      if (L_ECHOCTL(tty))
       num_chars += 2;
     } else if (!is_continuation(c, tty)) {
      num_chars++;
     }
    }
    echo_erase_tab(num_chars, after_tab, ldata);
   } else {
    if (iscntrl(c) && L_ECHOCTL(tty)) {
     echo_char_raw('\b', ldata);
     echo_char_raw(' ', ldata);
     echo_char_raw('\b', ldata);
    }
    if (!iscntrl(c) || L_ECHOCTL(tty)) {
     echo_char_raw('\b', ldata);
     echo_char_raw(' ', ldata);
     echo_char_raw('\b', ldata);
    }
   }
  }
  if (kill_type == ERASE)
   break;
 }
 if (ldata->read_head == ldata->canon_head && L_ECHO(tty))
  finish_erasing(ldata);
}
