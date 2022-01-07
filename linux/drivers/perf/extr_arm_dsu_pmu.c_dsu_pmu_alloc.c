
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsu_pmu {int num_counters; int pmu_lock; } ;


 int ENOMEM ;
 struct dsu_pmu* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct dsu_pmu* devm_kzalloc (int *,int,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct dsu_pmu *dsu_pmu_alloc(struct platform_device *pdev)
{
 struct dsu_pmu *dsu_pmu;

 dsu_pmu = devm_kzalloc(&pdev->dev, sizeof(*dsu_pmu), GFP_KERNEL);
 if (!dsu_pmu)
  return ERR_PTR(-ENOMEM);

 raw_spin_lock_init(&dsu_pmu->pmu_lock);




 dsu_pmu->num_counters = -1;
 return dsu_pmu;
}
