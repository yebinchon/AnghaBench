
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct adv_dvc_var {TYPE_1__* carr_freelist; } ;
struct TYPE_4__ {int next_vpa; } ;
typedef TYPE_1__ ADV_CARR_T ;


 int ADV_CQ_STOPPER ;
 int ASC_DBG (int,char*,int ) ;
 TYPE_1__* adv_get_carrier (struct adv_dvc_var*,int ) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static ADV_CARR_T *adv_get_next_carrier(struct adv_dvc_var *adv_dvc)
{
 ADV_CARR_T *carrp = adv_dvc->carr_freelist;
 u32 next_vpa = le32_to_cpu(carrp->next_vpa);

 if (next_vpa == 0 || next_vpa == ~0) {
  ASC_DBG(1, "invalid vpa offset 0x%x\n", next_vpa);
  return ((void*)0);
 }

 adv_dvc->carr_freelist = adv_get_carrier(adv_dvc, next_vpa);



 carrp->next_vpa = cpu_to_le32(ADV_CQ_STOPPER);

 return carrp;
}
