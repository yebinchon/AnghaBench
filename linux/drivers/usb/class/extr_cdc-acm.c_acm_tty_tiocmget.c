
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int ctrlout; int ctrlin; } ;


 int ACM_CTRL_DCD ;
 int ACM_CTRL_DSR ;
 int ACM_CTRL_DTR ;
 int ACM_CTRL_RI ;
 int ACM_CTRL_RTS ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;

__attribute__((used)) static int acm_tty_tiocmget(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;

 return (acm->ctrlout & ACM_CTRL_DTR ? TIOCM_DTR : 0) |
        (acm->ctrlout & ACM_CTRL_RTS ? TIOCM_RTS : 0) |
        (acm->ctrlin & ACM_CTRL_DSR ? TIOCM_DSR : 0) |
        (acm->ctrlin & ACM_CTRL_RI ? TIOCM_RI : 0) |
        (acm->ctrlin & ACM_CTRL_DCD ? TIOCM_CD : 0) |
        TIOCM_CTS;
}
