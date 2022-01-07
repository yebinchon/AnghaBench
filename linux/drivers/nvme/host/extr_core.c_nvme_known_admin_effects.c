
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int NVME_CMD_EFFECTS_CSE_MASK ;
 int NVME_CMD_EFFECTS_CSUPP ;
 int NVME_CMD_EFFECTS_LBCC ;



__attribute__((used)) static u32 nvme_known_admin_effects(u8 opcode)
{
 switch (opcode) {
 case 129:
  return NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
     NVME_CMD_EFFECTS_CSE_MASK;
 case 128:
  return NVME_CMD_EFFECTS_CSE_MASK;
 default:
  break;
 }
 return 0;
}
