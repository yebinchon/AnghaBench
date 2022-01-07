
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_tmr_req {int response; } ;


 int ISCSI_TMF_RSP_COMPLETE ;
 int ISCSI_TMF_RSP_NOT_SUPPORTED ;
 int ISCSI_TMF_RSP_NO_LUN ;
 int ISCSI_TMF_RSP_NO_TASK ;
 int ISCSI_TMF_RSP_REJECTED ;






__attribute__((used)) static u8 iscsit_convert_tcm_tmr_rsp(struct se_tmr_req *se_tmr)
{
 switch (se_tmr->response) {
 case 132:
  return ISCSI_TMF_RSP_COMPLETE;
 case 129:
  return ISCSI_TMF_RSP_NO_TASK;
 case 130:
  return ISCSI_TMF_RSP_NO_LUN;
 case 128:
  return ISCSI_TMF_RSP_NOT_SUPPORTED;
 case 131:
 default:
  return ISCSI_TMF_RSP_REJECTED;
 }
}
