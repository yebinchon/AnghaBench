
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_obj {int list; } ;
struct __queue {int lock; int queue; } ;
typedef int _irqL ;


 int _SUCCESS ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
{
 _irqL irqL;

 if (obj == ((void*)0))
  goto exit;


 spin_lock_irqsave(&queue->lock, irqL);

 list_add_tail(&obj->list, &queue->queue);


 spin_unlock_irqrestore(&queue->lock, irqL);

exit:
 return _SUCCESS;
}
