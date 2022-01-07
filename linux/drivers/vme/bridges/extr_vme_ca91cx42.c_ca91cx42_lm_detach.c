
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_lm_resource {int mtx; TYPE_1__* parent; } ;
struct ca91cx42_driver {scalar_t__ base; int ** lm_data; int ** lm_callback; } ;
struct TYPE_2__ {struct ca91cx42_driver* driver_priv; } ;


 int* CA91CX42_LINT_LM ;
 int CA91CX42_LINT_LM0 ;
 int CA91CX42_LINT_LM1 ;
 int CA91CX42_LINT_LM2 ;
 int CA91CX42_LINT_LM3 ;
 int CA91CX42_LM_CTL_EN ;
 scalar_t__ LINT_EN ;
 scalar_t__ LINT_STAT ;
 scalar_t__ LM_CTL ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ca91cx42_lm_detach(struct vme_lm_resource *lm, int monitor)
{
 u32 tmp;
 struct ca91cx42_driver *bridge;

 bridge = lm->parent->driver_priv;

 mutex_lock(&lm->mtx);


 tmp = ioread32(bridge->base + LINT_EN);
 tmp &= ~CA91CX42_LINT_LM[monitor];
 iowrite32(tmp, bridge->base + LINT_EN);

 iowrite32(CA91CX42_LINT_LM[monitor],
   bridge->base + LINT_STAT);


 bridge->lm_callback[monitor] = ((void*)0);
 bridge->lm_data[monitor] = ((void*)0);


 if ((tmp & (CA91CX42_LINT_LM0 | CA91CX42_LINT_LM1 | CA91CX42_LINT_LM2 |
   CA91CX42_LINT_LM3)) == 0) {
  tmp = ioread32(bridge->base + LM_CTL);
  tmp &= ~CA91CX42_LM_CTL_EN;
  iowrite32(tmp, bridge->base + LM_CTL);
 }

 mutex_unlock(&lm->mtx);

 return 0;
}
