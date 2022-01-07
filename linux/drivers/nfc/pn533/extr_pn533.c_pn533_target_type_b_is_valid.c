
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fsci_type; } ;
struct TYPE_4__ {scalar_t__ opcode; TYPE_1__ prot_info; } ;
struct pn533_target_type_b {TYPE_2__ sensb_res; } ;


 scalar_t__ PN533_TYPE_B_OPC_SENSB_RES ;
 int PN533_TYPE_B_PROT_TYPE (int ) ;
 int PN533_TYPE_B_PROT_TYPE_RFU_MASK ;

__attribute__((used)) static bool pn533_target_type_b_is_valid(struct pn533_target_type_b *type_b,
       int target_data_len)
{
 if (target_data_len < sizeof(struct pn533_target_type_b))
  return 0;

 if (type_b->sensb_res.opcode != PN533_TYPE_B_OPC_SENSB_RES)
  return 0;

 if (PN533_TYPE_B_PROT_TYPE(type_b->sensb_res.prot_info.fsci_type) &
      PN533_TYPE_B_PROT_TYPE_RFU_MASK)
  return 0;

 return 1;
}
