
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hvsi_priv {TYPE_2__* tty; scalar_t__ opened; int termno; int is_console; } ;
struct hvc_struct {int lock; } ;
struct TYPE_3__ {int c_cflag; } ;
struct TYPE_4__ {TYPE_1__ termios; } ;


 int HUPCL ;
 int hvsi_send_close (struct hvsi_priv*) ;
 int hvsilib_write_mctrl (struct hvsi_priv*,int ) ;
 int pr_devel (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (TYPE_2__*) ;

void hvsilib_close(struct hvsi_priv *pv, struct hvc_struct *hp)
{
 unsigned long flags;

 pr_devel("HVSI@%x: close !\n", pv->termno);

 if (!pv->is_console) {
  pr_devel("HVSI@%x: Not a console, tearing down\n",
    pv->termno);


  spin_lock_irqsave(&hp->lock, flags);
  pv->opened = 0;
  spin_unlock_irqrestore(&hp->lock, flags);


  if (!pv->tty || (pv->tty->termios.c_cflag & HUPCL))
   hvsilib_write_mctrl(pv, 0);


  hvsi_send_close(pv);
 }

 tty_kref_put(pv->tty);
 pv->tty = ((void*)0);
}
