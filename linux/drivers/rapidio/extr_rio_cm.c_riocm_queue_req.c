
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_req {size_t len; int node; void* buffer; struct rio_dev* rdev; } ;
struct rio_dev {int dummy; } ;
struct cm_dev {int tx_lock; int tx_reqs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tx_req* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int riocm_queue_req(struct cm_dev *cm, struct rio_dev *rdev,
      void *buffer, size_t len)
{
 unsigned long flags;
 struct tx_req *treq;

 treq = kzalloc(sizeof(*treq), GFP_KERNEL);
 if (treq == ((void*)0))
  return -ENOMEM;

 treq->rdev = rdev;
 treq->buffer = buffer;
 treq->len = len;

 spin_lock_irqsave(&cm->tx_lock, flags);
 list_add_tail(&treq->node, &cm->tx_reqs);
 spin_unlock_irqrestore(&cm->tx_lock, flags);
 return 0;
}
