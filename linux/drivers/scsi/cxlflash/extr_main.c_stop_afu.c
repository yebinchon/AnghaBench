
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwq {int irqpoll; } ;
struct cxlflash_cfg {TYPE_1__* ops; int work_q; struct afu* afu; } ;
struct afu {int num_hwqs; struct afu* afu_map; int cmds_active; } ;
struct TYPE_2__ {int (* psa_unmap ) (struct afu*) ;} ;


 scalar_t__ afu_is_irqpoll_enabled (struct afu*) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int current_is_async () ;
 int cxlflash_reset_sync (struct cxlflash_cfg*) ;
 struct hwq* get_hwq (struct afu*,int) ;
 int irq_poll_disable (int *) ;
 scalar_t__ likely (struct afu*) ;
 int ssleep (int) ;
 int stub1 (struct afu*) ;

__attribute__((used)) static void stop_afu(struct cxlflash_cfg *cfg)
{
 struct afu *afu = cfg->afu;
 struct hwq *hwq;
 int i;

 cancel_work_sync(&cfg->work_q);
 if (!current_is_async())
  cxlflash_reset_sync(cfg);

 if (likely(afu)) {
  while (atomic_read(&afu->cmds_active))
   ssleep(1);

  if (afu_is_irqpoll_enabled(afu)) {
   for (i = 0; i < afu->num_hwqs; i++) {
    hwq = get_hwq(afu, i);

    irq_poll_disable(&hwq->irqpoll);
   }
  }

  if (likely(afu->afu_map)) {
   cfg->ops->psa_unmap(afu->afu_map);
   afu->afu_map = ((void*)0);
  }
 }
}
