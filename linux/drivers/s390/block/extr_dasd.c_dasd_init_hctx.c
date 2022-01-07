
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_queue {int lock; } ;
struct blk_mq_hw_ctx {struct dasd_queue* driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dasd_queue* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dasd_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
     unsigned int idx)
{
 struct dasd_queue *dq = kzalloc(sizeof(*dq), GFP_KERNEL);

 if (!dq)
  return -ENOMEM;

 spin_lock_init(&dq->lock);
 hctx->driver_data = dq;

 return 0;
}
