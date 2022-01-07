
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vme_lm_resource {int monitors; int mtx; struct vme_bridge* parent; } ;
struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {unsigned long long lm_base; int lm_aspace; int lm_cycle; scalar_t__* lm_callback; } ;


 int EBUSY ;
 int EINVAL ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int fake_lm_set(struct vme_lm_resource *lm, unsigned long long lm_base,
  u32 aspace, u32 cycle)
{
 int i;
 struct vme_bridge *fake_bridge;
 struct fake_driver *bridge;

 fake_bridge = lm->parent;

 bridge = fake_bridge->driver_priv;

 mutex_lock(&lm->mtx);


 for (i = 0; i < lm->monitors; i++) {
  if (bridge->lm_callback[i]) {
   mutex_unlock(&lm->mtx);
   pr_err("Location monitor callback attached, can't reset\n");
   return -EBUSY;
  }
 }

 switch (aspace) {
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  mutex_unlock(&lm->mtx);
  pr_err("Invalid address space\n");
  return -EINVAL;
 }

 bridge->lm_base = lm_base;
 bridge->lm_aspace = aspace;
 bridge->lm_cycle = cycle;

 mutex_unlock(&lm->mtx);

 return 0;
}
