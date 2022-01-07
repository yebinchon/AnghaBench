
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_lm_resource {int monitors; int mtx; struct vme_bridge* parent; } ;
struct vme_bridge {int parent; struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {scalar_t__ base; scalar_t__* lm_callback; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ TSI148_LCSR_LMAT ;
 int TSI148_LCSR_LMAT_AS_A16 ;
 int TSI148_LCSR_LMAT_AS_A24 ;
 int TSI148_LCSR_LMAT_AS_A32 ;
 int TSI148_LCSR_LMAT_AS_A64 ;
 int TSI148_LCSR_LMAT_DATA ;
 int TSI148_LCSR_LMAT_NPRIV ;
 int TSI148_LCSR_LMAT_PGM ;
 int TSI148_LCSR_LMAT_SUPR ;
 scalar_t__ TSI148_LCSR_LMBAL ;
 scalar_t__ TSI148_LCSR_LMBAU ;




 int VME_DATA ;
 int VME_PROG ;
 int VME_SUPER ;
 int VME_USER ;
 int dev_err (int ,char*) ;
 int iowrite32be (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_split (unsigned long long,int*,int*) ;

__attribute__((used)) static int tsi148_lm_set(struct vme_lm_resource *lm, unsigned long long lm_base,
 u32 aspace, u32 cycle)
{
 u32 lm_base_high, lm_base_low, lm_ctl = 0;
 int i;
 struct vme_bridge *tsi148_bridge;
 struct tsi148_driver *bridge;

 tsi148_bridge = lm->parent;

 bridge = tsi148_bridge->driver_priv;

 mutex_lock(&lm->mtx);


 for (i = 0; i < lm->monitors; i++) {
  if (bridge->lm_callback[i]) {
   mutex_unlock(&lm->mtx);
   dev_err(tsi148_bridge->parent, "Location monitor "
    "callback attached, can't reset\n");
   return -EBUSY;
  }
 }

 switch (aspace) {
 case 131:
  lm_ctl |= TSI148_LCSR_LMAT_AS_A16;
  break;
 case 130:
  lm_ctl |= TSI148_LCSR_LMAT_AS_A24;
  break;
 case 129:
  lm_ctl |= TSI148_LCSR_LMAT_AS_A32;
  break;
 case 128:
  lm_ctl |= TSI148_LCSR_LMAT_AS_A64;
  break;
 default:
  mutex_unlock(&lm->mtx);
  dev_err(tsi148_bridge->parent, "Invalid address space\n");
  return -EINVAL;
  break;
 }

 if (cycle & VME_SUPER)
  lm_ctl |= TSI148_LCSR_LMAT_SUPR ;
 if (cycle & VME_USER)
  lm_ctl |= TSI148_LCSR_LMAT_NPRIV;
 if (cycle & VME_PROG)
  lm_ctl |= TSI148_LCSR_LMAT_PGM;
 if (cycle & VME_DATA)
  lm_ctl |= TSI148_LCSR_LMAT_DATA;

 reg_split(lm_base, &lm_base_high, &lm_base_low);

 iowrite32be(lm_base_high, bridge->base + TSI148_LCSR_LMBAU);
 iowrite32be(lm_base_low, bridge->base + TSI148_LCSR_LMBAL);
 iowrite32be(lm_ctl, bridge->base + TSI148_LCSR_LMAT);

 mutex_unlock(&lm->mtx);

 return 0;
}
