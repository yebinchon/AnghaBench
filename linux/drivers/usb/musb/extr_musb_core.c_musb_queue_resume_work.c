
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_pending_work {int (* callback ) (struct musb*,void*) ;int node; void* data; } ;
struct musb {int list_lock; int controller; int pending_list; scalar_t__ is_runtime_suspended; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int (*) (struct musb*,void*)) ;
 int devm_kfree (int ,struct musb_pending_work*) ;
 struct musb_pending_work* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ pm_runtime_active (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int musb_queue_resume_work(struct musb *musb,
      int (*callback)(struct musb *musb, void *data),
      void *data)
{
 struct musb_pending_work *w;
 unsigned long flags;
 int error;

 if (WARN_ON(!callback))
  return -EINVAL;

 if (pm_runtime_active(musb->controller))
  return callback(musb, data);

 w = devm_kzalloc(musb->controller, sizeof(*w), GFP_ATOMIC);
 if (!w)
  return -ENOMEM;

 w->callback = callback;
 w->data = data;
 spin_lock_irqsave(&musb->list_lock, flags);
 if (musb->is_runtime_suspended) {
  list_add_tail(&w->node, &musb->pending_list);
  error = 0;
 } else {
  dev_err(musb->controller, "could not add resume work %p\n",
   callback);
  devm_kfree(musb->controller, w);
  error = -EINPROGRESS;
 }
 spin_unlock_irqrestore(&musb->list_lock, flags);

 return error;
}
