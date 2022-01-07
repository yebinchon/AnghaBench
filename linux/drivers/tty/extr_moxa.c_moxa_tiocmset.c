
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int dummy; } ;


 int EINVAL ;
 int MoxaPortGetLineOut (struct moxa_port*,int*,int*) ;
 int MoxaPortLineCtrl (struct moxa_port*,int,int) ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int moxa_openlock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int moxa_tiocmset(struct tty_struct *tty,
    unsigned int set, unsigned int clear)
{
 struct moxa_port *ch;
 int dtr, rts;

 mutex_lock(&moxa_openlock);
 ch = tty->driver_data;
 if (!ch) {
  mutex_unlock(&moxa_openlock);
  return -EINVAL;
 }

 MoxaPortGetLineOut(ch, &dtr, &rts);
 if (set & TIOCM_RTS)
  rts = 1;
 if (set & TIOCM_DTR)
  dtr = 1;
 if (clear & TIOCM_RTS)
  rts = 0;
 if (clear & TIOCM_DTR)
  dtr = 0;
 MoxaPortLineCtrl(ch, dtr, rts);
 mutex_unlock(&moxa_openlock);
 return 0;
}
