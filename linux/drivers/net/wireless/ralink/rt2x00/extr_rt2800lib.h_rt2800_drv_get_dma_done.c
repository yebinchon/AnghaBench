
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2800_ops {unsigned int (* drv_get_dma_done ) (struct data_queue*) ;} ;
struct data_queue {TYPE_2__* rt2x00dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct rt2800_ops* drv; } ;


 unsigned int stub1 (struct data_queue*) ;

__attribute__((used)) static inline unsigned int rt2800_drv_get_dma_done(struct data_queue *queue)
{
 const struct rt2800_ops *rt2800ops = queue->rt2x00dev->ops->drv;

 return rt2800ops->drv_get_dma_done(queue);
}
