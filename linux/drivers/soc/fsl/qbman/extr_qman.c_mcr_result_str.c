
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *mcr_result_str(u8 result)
{
 switch (result) {
 case 130:
  return "QM_MCR_RESULT_NULL";
 case 129:
  return "QM_MCR_RESULT_OK";
 case 133:
  return "QM_MCR_RESULT_ERR_FQID";
 case 132:
  return "QM_MCR_RESULT_ERR_FQSTATE";
 case 131:
  return "QM_MCR_RESULT_ERR_NOTEMPTY";
 case 128:
  return "QM_MCR_RESULT_PENDING";
 case 134:
  return "QM_MCR_RESULT_ERR_BADCOMMAND";
 }
 return "<unknown MCR result>";
}
