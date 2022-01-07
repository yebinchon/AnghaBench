
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {unsigned int ctrlout; } ;


 unsigned int ACM_CTRL_DTR ;
 unsigned int ACM_CTRL_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int acm_set_control (struct acm*,unsigned int) ;

__attribute__((used)) static int acm_tty_tiocmset(struct tty_struct *tty,
       unsigned int set, unsigned int clear)
{
 struct acm *acm = tty->driver_data;
 unsigned int newctrl;

 newctrl = acm->ctrlout;
 set = (set & TIOCM_DTR ? ACM_CTRL_DTR : 0) |
     (set & TIOCM_RTS ? ACM_CTRL_RTS : 0);
 clear = (clear & TIOCM_DTR ? ACM_CTRL_DTR : 0) |
     (clear & TIOCM_RTS ? ACM_CTRL_RTS : 0);

 newctrl = (newctrl & ~clear) | set;

 if (acm->ctrlout == newctrl)
  return 0;
 return acm_set_control(acm, acm->ctrlout = newctrl);
}
