
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct hvc_struct* driver_data; } ;
struct TYPE_4__ {scalar_t__ count; int lock; } ;
struct hvc_struct {int data; TYPE_1__* ops; scalar_t__ n_outbuf; TYPE_2__ port; int tty_resize; } ;
struct TYPE_3__ {int (* notifier_hangup ) (struct hvc_struct*,int ) ;} ;


 int cancel_work_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hvc_struct*,int ) ;
 int tty_port_tty_set (TYPE_2__*,int *) ;

__attribute__((used)) static void hvc_hangup(struct tty_struct *tty)
{
 struct hvc_struct *hp = tty->driver_data;
 unsigned long flags;

 if (!hp)
  return;


 cancel_work_sync(&hp->tty_resize);

 spin_lock_irqsave(&hp->port.lock, flags);






 if (hp->port.count <= 0) {
  spin_unlock_irqrestore(&hp->port.lock, flags);
  return;
 }

 hp->port.count = 0;
 spin_unlock_irqrestore(&hp->port.lock, flags);
 tty_port_tty_set(&hp->port, ((void*)0));

 hp->n_outbuf = 0;

 if (hp->ops->notifier_hangup)
  hp->ops->notifier_hangup(hp, hp->data);
}
