
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_instance {TYPE_1__* reg_set; } ;
struct TYPE_2__ {int outbound_scratch_pad_0; } ;


 int readl (int *) ;

__attribute__((used)) static u32
megasas_read_fw_status_reg_ppc(struct megasas_instance *instance)
{
 return readl(&instance->reg_set->outbound_scratch_pad_0);
}
