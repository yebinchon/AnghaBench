
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_lm_resource {int mtx; TYPE_1__* parent; } ;
struct fake_driver {unsigned long long lm_base; int lm_enabled; int lm_cycle; int lm_aspace; } ;
struct TYPE_2__ {struct fake_driver* driver_priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fake_lm_get(struct vme_lm_resource *lm,
  unsigned long long *lm_base, u32 *aspace, u32 *cycle)
{
 struct fake_driver *bridge;

 bridge = lm->parent->driver_priv;

 mutex_lock(&lm->mtx);

 *lm_base = bridge->lm_base;
 *aspace = bridge->lm_aspace;
 *cycle = bridge->lm_cycle;

 mutex_unlock(&lm->mtx);

 return bridge->lm_enabled;
}
