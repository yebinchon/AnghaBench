
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_lflag; } ;
struct tty_struct {int read_wait; int write_wait; int flow_stopped; TYPE_2__* driver; TYPE_1__ termios; struct n_tty_data* disc_data; } ;
struct n_tty_data {int line_start; int read_tail; int canon_head; int push; int read_head; int commit_head; int icanon; int raw; int real_raw; int char_map; scalar_t__ lnext; scalar_t__ erasing; int read_flags; } ;
struct ktermios {int c_lflag; int c_iflag; } ;
struct TYPE_4__ {int flags; } ;


 char EOF_CHAR (struct tty_struct*) ;
 char EOL2_CHAR (struct tty_struct*) ;
 char EOL_CHAR (struct tty_struct*) ;
 char ERASE_CHAR (struct tty_struct*) ;
 int EXTPROC ;
 int ICANON ;
 char INTR_CHAR (struct tty_struct*) ;
 int IXON ;
 int I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_ICRNL (struct tty_struct*) ;
 scalar_t__ I_IGNBRK (struct tty_struct*) ;
 scalar_t__ I_IGNCR (struct tty_struct*) ;
 scalar_t__ I_IGNPAR (struct tty_struct*) ;
 scalar_t__ I_INLCR (struct tty_struct*) ;
 int I_INPCK (struct tty_struct*) ;
 scalar_t__ I_ISTRIP (struct tty_struct*) ;
 scalar_t__ I_IUCLC (struct tty_struct*) ;
 scalar_t__ I_IXON (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 char KILL_CHAR (struct tty_struct*) ;
 char LNEXT_CHAR (struct tty_struct*) ;
 scalar_t__ L_ECHO (struct tty_struct*) ;
 scalar_t__ L_ICANON (struct tty_struct*) ;
 scalar_t__ L_IEXTEN (struct tty_struct*) ;
 scalar_t__ L_ISIG (struct tty_struct*) ;
 int N_TTY_BUF_SIZE ;
 char QUIT_CHAR (struct tty_struct*) ;
 char REPRINT_CHAR (struct tty_struct*) ;
 char START_CHAR (struct tty_struct*) ;
 char STOP_CHAR (struct tty_struct*) ;
 char SUSP_CHAR (struct tty_struct*) ;
 int TTY_DRIVER_REAL_RAW ;
 char WERASE_CHAR (struct tty_struct*) ;
 int __DISABLED_CHAR ;
 int bitmap_zero (int ,int) ;
 int clear_bit (int ,int ) ;
 int process_echoes (struct tty_struct*) ;
 int read_cnt (struct n_tty_data*) ;
 int set_bit (char,int ) ;
 int start_tty (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void n_tty_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 struct n_tty_data *ldata = tty->disc_data;

 if (!old || (old->c_lflag ^ tty->termios.c_lflag) & (ICANON | EXTPROC)) {
  bitmap_zero(ldata->read_flags, N_TTY_BUF_SIZE);
  ldata->line_start = ldata->read_tail;
  if (!L_ICANON(tty) || !read_cnt(ldata)) {
   ldata->canon_head = ldata->read_tail;
   ldata->push = 0;
  } else {
   set_bit((ldata->read_head - 1) & (N_TTY_BUF_SIZE - 1),
    ldata->read_flags);
   ldata->canon_head = ldata->read_head;
   ldata->push = 1;
  }
  ldata->commit_head = ldata->read_head;
  ldata->erasing = 0;
  ldata->lnext = 0;
 }

 ldata->icanon = (L_ICANON(tty) != 0);

 if (I_ISTRIP(tty) || I_IUCLC(tty) || I_IGNCR(tty) ||
     I_ICRNL(tty) || I_INLCR(tty) || L_ICANON(tty) ||
     I_IXON(tty) || L_ISIG(tty) || L_ECHO(tty) ||
     I_PARMRK(tty)) {
  bitmap_zero(ldata->char_map, 256);

  if (I_IGNCR(tty) || I_ICRNL(tty))
   set_bit('\r', ldata->char_map);
  if (I_INLCR(tty))
   set_bit('\n', ldata->char_map);

  if (L_ICANON(tty)) {
   set_bit(ERASE_CHAR(tty), ldata->char_map);
   set_bit(KILL_CHAR(tty), ldata->char_map);
   set_bit(EOF_CHAR(tty), ldata->char_map);
   set_bit('\n', ldata->char_map);
   set_bit(EOL_CHAR(tty), ldata->char_map);
   if (L_IEXTEN(tty)) {
    set_bit(WERASE_CHAR(tty), ldata->char_map);
    set_bit(LNEXT_CHAR(tty), ldata->char_map);
    set_bit(EOL2_CHAR(tty), ldata->char_map);
    if (L_ECHO(tty))
     set_bit(REPRINT_CHAR(tty),
      ldata->char_map);
   }
  }
  if (I_IXON(tty)) {
   set_bit(START_CHAR(tty), ldata->char_map);
   set_bit(STOP_CHAR(tty), ldata->char_map);
  }
  if (L_ISIG(tty)) {
   set_bit(INTR_CHAR(tty), ldata->char_map);
   set_bit(QUIT_CHAR(tty), ldata->char_map);
   set_bit(SUSP_CHAR(tty), ldata->char_map);
  }
  clear_bit(__DISABLED_CHAR, ldata->char_map);
  ldata->raw = 0;
  ldata->real_raw = 0;
 } else {
  ldata->raw = 1;
  if ((I_IGNBRK(tty) || (!I_BRKINT(tty) && !I_PARMRK(tty))) &&
      (I_IGNPAR(tty) || !I_INPCK(tty)) &&
      (tty->driver->flags & TTY_DRIVER_REAL_RAW))
   ldata->real_raw = 1;
  else
   ldata->real_raw = 0;
 }




 if (!I_IXON(tty) && old && (old->c_iflag & IXON) && !tty->flow_stopped) {
  start_tty(tty);
  process_echoes(tty);
 }


 wake_up_interruptible(&tty->write_wait);
 wake_up_interruptible(&tty->read_wait);
}
