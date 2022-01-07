
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int prot_op; } ;
 int ql2xenablehba_err_chk ;

__attribute__((used)) static inline int
qlt_hba_err_chk_enabled(struct se_cmd *se_cmd)
{
 switch (se_cmd->prot_op) {
 case 130:
 case 131:
  if (ql2xenablehba_err_chk >= 1)
   return 1;
  break;
 case 129:
 case 132:
  if (ql2xenablehba_err_chk >= 2)
   return 1;
  break;
 case 133:
 case 128:
  return 1;
 default:
  break;
 }
 return 0;
}
