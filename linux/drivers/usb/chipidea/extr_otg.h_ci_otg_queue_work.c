
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int irq; int work; int wq; } ;


 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static inline void ci_otg_queue_work(struct ci_hdrc *ci)
{
 disable_irq_nosync(ci->irq);
 if (queue_work(ci->wq, &ci->work) == 0)
  enable_irq(ci->irq);
}
