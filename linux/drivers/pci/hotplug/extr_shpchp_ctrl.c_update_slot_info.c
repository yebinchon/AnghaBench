
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {int presence_save; TYPE_1__* hpc_ops; int latch_save; int attention_save; int pwr_save; } ;
struct TYPE_2__ {int (* get_adapter_status ) (struct slot*,int *) ;int (* get_latch_status ) (struct slot*,int *) ;int (* get_attention_status ) (struct slot*,int *) ;int (* get_power_status ) (struct slot*,int *) ;} ;


 int stub1 (struct slot*,int *) ;
 int stub2 (struct slot*,int *) ;
 int stub3 (struct slot*,int *) ;
 int stub4 (struct slot*,int *) ;

__attribute__((used)) static void update_slot_info(struct slot *slot)
{
 slot->hpc_ops->get_power_status(slot, &slot->pwr_save);
 slot->hpc_ops->get_attention_status(slot, &slot->attention_save);
 slot->hpc_ops->get_latch_status(slot, &slot->latch_save);
 slot->hpc_ops->get_adapter_status(slot, &slot->presence_save);
}
