
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_obj {int list; } ;
struct __queue {int lock; int queue; } ;


 int _SUCCESS ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
{
 unsigned long irqL;

 if (!obj)
  goto exit;

 spin_lock_irqsave(&queue->lock, irqL);

 list_add_tail(&obj->list, &queue->queue);

 spin_unlock_irqrestore(&queue->lock, irqL);

exit:

 return _SUCCESS;
}
