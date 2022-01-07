
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pqi_ctrl_info {TYPE_1__* registers; } ;
struct TYPE_2__ {int sis_host_to_ctrl_doorbell; } ;


 int sis_wait_for_doorbell_bit_to_clear (struct pqi_ctrl_info*,int ) ;
 int writel (int ,int *) ;

__attribute__((used)) static inline int sis_set_doorbell_bit(struct pqi_ctrl_info *ctrl_info, u32 bit)
{
 writel(bit, &ctrl_info->registers->sis_host_to_ctrl_doorbell);

 return sis_wait_for_doorbell_bit_to_clear(ctrl_info, bit);
}
