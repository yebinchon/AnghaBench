
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_queue {int lock; } ;
struct blk_mq_hw_ctx {struct scm_queue* driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct scm_queue* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int scm_blk_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
        unsigned int idx)
{
 struct scm_queue *qd = kzalloc(sizeof(*qd), GFP_KERNEL);

 if (!qd)
  return -ENOMEM;

 spin_lock_init(&qd->lock);
 hctx->driver_data = qd;

 return 0;
}
