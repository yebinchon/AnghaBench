
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum tcm_tmreq_table { ____Placeholder_tcm_tmreq_table } tcm_tmreq_table ;
 int TMR_ABORT_TASK ;
 int TMR_ABORT_TASK_SET ;
 int TMR_CLEAR_ACA ;
 int TMR_CLEAR_TASK_SET ;
 int TMR_LUN_RESET ;
 int TMR_TARGET_COLD_RESET ;
 int TMR_TARGET_WARM_RESET ;
 int TMR_UNKNOWN ;

__attribute__((used)) static enum tcm_tmreq_table iscsit_convert_tmf(u8 iscsi_tmf)
{
 switch (iscsi_tmf) {
 case 134:
  return TMR_ABORT_TASK;
 case 133:
  return TMR_ABORT_TASK_SET;
 case 132:
  return TMR_CLEAR_ACA;
 case 131:
  return TMR_CLEAR_TASK_SET;
 case 130:
  return TMR_LUN_RESET;
 case 128:
  return TMR_TARGET_WARM_RESET;
 case 129:
  return TMR_TARGET_COLD_RESET;
 default:
  return TMR_UNKNOWN;
 }
}
