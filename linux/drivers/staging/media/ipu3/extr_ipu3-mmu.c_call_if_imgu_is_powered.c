
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_mmu {int dev; } ;


 int pm_runtime_get_if_in_use (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void call_if_imgu_is_powered(struct imgu_mmu *mmu,
        void (*func)(struct imgu_mmu *mmu))
{
 if (!pm_runtime_get_if_in_use(mmu->dev))
  return;

 func(mmu);
 pm_runtime_put(mmu->dev);
}
