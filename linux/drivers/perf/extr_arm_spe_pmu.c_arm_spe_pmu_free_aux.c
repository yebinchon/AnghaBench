
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu_buf {int base; } ;


 int kfree (struct arm_spe_pmu_buf*) ;
 int vunmap (int ) ;

__attribute__((used)) static void arm_spe_pmu_free_aux(void *aux)
{
 struct arm_spe_pmu_buf *buf = aux;

 vunmap(buf->base);
 kfree(buf);
}
