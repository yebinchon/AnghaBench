
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct __queue {int lock; int queue; } ;
struct cmd_priv {int cmd_queue_comp; struct __queue cmd_queue; TYPE_2__* padapter; } ;
struct cmd_obj {int list; } ;
struct TYPE_3__ {scalar_t__ bautoload_fail_flag; } ;
struct TYPE_4__ {TYPE_1__ eeprompriv; } ;


 int complete (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
{
 unsigned long irqL;
 struct __queue *queue;

 if (!obj)
  return;
 if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
  return;
 queue = &pcmdpriv->cmd_queue;
 spin_lock_irqsave(&queue->lock, irqL);
 list_add_tail(&obj->list, &queue->queue);
 spin_unlock_irqrestore(&queue->lock, irqL);
 complete(&pcmdpriv->cmd_queue_comp);
}
