
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int prot_op; } ;
__attribute__((used)) static inline int
qla_tgt_ref_mask_check(struct se_cmd *se_cmd)
{
 switch (se_cmd->prot_op) {
 case 133:
 case 130:
 case 131:
 case 128:
 case 132:
 case 129:
     return 1;
 default:
     return 0;
 }
 return 0;
}
