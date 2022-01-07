
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_lm_resource {int monitors; int mtx; TYPE_1__* parent; } ;
struct device {int dummy; } ;
struct ca91cx42_driver {scalar_t__ base; scalar_t__* lm_callback; } ;
struct TYPE_2__ {struct device* parent; struct ca91cx42_driver* driver_priv; } ;


 int CA91CX42_LM_CTL_AS_A16 ;
 int CA91CX42_LM_CTL_AS_A24 ;
 int CA91CX42_LM_CTL_AS_A32 ;
 int CA91CX42_LM_CTL_DATA ;
 int CA91CX42_LM_CTL_NPRIV ;
 int CA91CX42_LM_CTL_PGM ;
 int CA91CX42_LM_CTL_SUPR ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ LM_BS ;
 scalar_t__ LM_CTL ;



 int VME_DATA ;
 int VME_PROG ;
 int VME_SUPER ;
 int VME_USER ;
 int dev_err (struct device*,char*) ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ca91cx42_lm_set(struct vme_lm_resource *lm,
 unsigned long long lm_base, u32 aspace, u32 cycle)
{
 u32 temp_base, lm_ctl = 0;
 int i;
 struct ca91cx42_driver *bridge;
 struct device *dev;

 bridge = lm->parent->driver_priv;
 dev = lm->parent->parent;


 temp_base = (u32)lm_base;
 if (temp_base & 0xffff) {
  dev_err(dev, "Location monitor must be aligned to 64KB "
   "boundary");
  return -EINVAL;
 }

 mutex_lock(&lm->mtx);


 for (i = 0; i < lm->monitors; i++) {
  if (bridge->lm_callback[i]) {
   mutex_unlock(&lm->mtx);
   dev_err(dev, "Location monitor callback attached, "
    "can't reset\n");
   return -EBUSY;
  }
 }

 switch (aspace) {
 case 130:
  lm_ctl |= CA91CX42_LM_CTL_AS_A16;
  break;
 case 129:
  lm_ctl |= CA91CX42_LM_CTL_AS_A24;
  break;
 case 128:
  lm_ctl |= CA91CX42_LM_CTL_AS_A32;
  break;
 default:
  mutex_unlock(&lm->mtx);
  dev_err(dev, "Invalid address space\n");
  return -EINVAL;
  break;
 }

 if (cycle & VME_SUPER)
  lm_ctl |= CA91CX42_LM_CTL_SUPR;
 if (cycle & VME_USER)
  lm_ctl |= CA91CX42_LM_CTL_NPRIV;
 if (cycle & VME_PROG)
  lm_ctl |= CA91CX42_LM_CTL_PGM;
 if (cycle & VME_DATA)
  lm_ctl |= CA91CX42_LM_CTL_DATA;

 iowrite32(lm_base, bridge->base + LM_BS);
 iowrite32(lm_ctl, bridge->base + LM_CTL);

 mutex_unlock(&lm->mtx);

 return 0;
}
