
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_target_felica {scalar_t__ opcode; } ;


 scalar_t__ PN533_FELICA_OPC_SENSF_RES ;

__attribute__((used)) static bool pn533_target_felica_is_valid(struct pn533_target_felica *felica,
       int target_data_len)
{
 if (target_data_len < sizeof(struct pn533_target_felica))
  return 0;

 if (felica->opcode != PN533_FELICA_OPC_SENSF_RES)
  return 0;

 return 1;
}
