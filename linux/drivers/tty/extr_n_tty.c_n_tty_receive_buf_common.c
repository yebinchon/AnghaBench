
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; int termios_rwsem; TYPE_1__* driver; int flags; struct n_tty_data* disc_data; } ;
struct n_tty_data {size_t read_head; size_t canon_head; int no_room; scalar_t__ icanon; int read_tail; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ I_PARMRK (struct tty_struct*) ;
 size_t N_TTY_BUF_SIZE ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 int TTY_LDISC_CHANGING ;
 char TTY_PARITY ;
 int TTY_UNTHROTTLE_SAFE ;
 int __receive_buf (struct tty_struct*,unsigned char const*,char*,int) ;
 int __tty_set_flow_change (struct tty_struct*,int ) ;
 int down_read (int *) ;
 int min (int,int) ;
 int n_tty_check_throttle (struct tty_struct*) ;
 size_t smp_load_acquire (int *) ;
 int test_bit (int ,int *) ;
 int tty_set_flow_change (struct tty_struct*,int ) ;
 int tty_unthrottle_safe (struct tty_struct*) ;
 int up_read (int *) ;

__attribute__((used)) static int
n_tty_receive_buf_common(struct tty_struct *tty, const unsigned char *cp,
    char *fp, int count, int flow)
{
 struct n_tty_data *ldata = tty->disc_data;
 int room, n, rcvd = 0, overflow;

 down_read(&tty->termios_rwsem);

 do {
  size_t tail = smp_load_acquire(&ldata->read_tail);

  room = N_TTY_BUF_SIZE - (ldata->read_head - tail);
  if (I_PARMRK(tty))
   room = (room + 2) / 3;
  room--;
  if (room <= 0) {
   overflow = ldata->icanon && ldata->canon_head == tail;
   if (overflow && room < 0)
    ldata->read_head--;
   room = overflow;
   ldata->no_room = flow && !room;
  } else
   overflow = 0;

  n = min(count, room);
  if (!n)
   break;


  if (!overflow || !fp || *fp != TTY_PARITY)
   __receive_buf(tty, cp, fp, n);

  cp += n;
  if (fp)
   fp += n;
  count -= n;
  rcvd += n;
 } while (!test_bit(TTY_LDISC_CHANGING, &tty->flags));

 tty->receive_room = room;


 if (tty->driver->type == TTY_DRIVER_TYPE_PTY) {
  if (overflow) {
   tty_set_flow_change(tty, TTY_UNTHROTTLE_SAFE);
   tty_unthrottle_safe(tty);
   __tty_set_flow_change(tty, 0);
  }
 } else
  n_tty_check_throttle(tty);

 up_read(&tty->termios_rwsem);

 return rcvd;
}
