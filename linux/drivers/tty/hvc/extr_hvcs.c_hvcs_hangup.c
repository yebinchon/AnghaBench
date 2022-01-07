
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct hvcs_struct* driver_data; } ;
struct TYPE_4__ {int count; int * tty; } ;
struct hvcs_struct {TYPE_2__ port; int lock; TYPE_1__* vdev; scalar_t__ chars_in_buffer; int * buffer; scalar_t__ todo_mask; } ;
struct TYPE_3__ {int irq; } ;


 int HVCS_BUFF_LEN ;
 int free_irq (int,struct hvcs_struct*) ;
 int memset (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_put (TYPE_2__*) ;
 int vio_disable_interrupts (TYPE_1__*) ;

__attribute__((used)) static void hvcs_hangup(struct tty_struct * tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;
 unsigned long flags;
 int temp_open_count;
 int irq;

 spin_lock_irqsave(&hvcsd->lock, flags);

 temp_open_count = hvcsd->port.count;






 vio_disable_interrupts(hvcsd->vdev);

 hvcsd->todo_mask = 0;


 tty->driver_data = ((void*)0);
 hvcsd->port.tty = ((void*)0);

 hvcsd->port.count = 0;



 memset(&hvcsd->buffer[0], 0x00, HVCS_BUFF_LEN);
 hvcsd->chars_in_buffer = 0;

 irq = hvcsd->vdev->irq;

 spin_unlock_irqrestore(&hvcsd->lock, flags);

 free_irq(irq, hvcsd);






 while(temp_open_count) {
  --temp_open_count;





  tty_port_put(&hvcsd->port);
 }
}
