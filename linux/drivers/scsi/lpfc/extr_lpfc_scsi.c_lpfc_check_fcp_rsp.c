
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_io_buf {struct fcp_rsp* fcp_rsp; } ;
struct fcp_rsp {int rspStatus2; int rspInfo3; int rspRspLen; } ;


 int FAILED ;
 int KERN_INFO ;
 int LOG_FCP ;
 int RSP_LEN_VALID ;




 int SUCCESS ;
 int be32_to_cpu (int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;

__attribute__((used)) static int
lpfc_check_fcp_rsp(struct lpfc_vport *vport, struct lpfc_io_buf *lpfc_cmd)
{
 struct fcp_rsp *fcprsp = lpfc_cmd->fcp_rsp;
 uint32_t rsp_info;
 uint32_t rsp_len;
 uint8_t rsp_info_code;
 int ret = FAILED;


 if (fcprsp == ((void*)0))
  lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
     "0703 fcp_rsp is missing\n");
 else {
  rsp_info = fcprsp->rspStatus2;
  rsp_len = be32_to_cpu(fcprsp->rspRspLen);
  rsp_info_code = fcprsp->rspInfo3;


  lpfc_printf_vlog(vport, KERN_INFO,
     LOG_FCP,
     "0706 fcp_rsp valid 0x%x,"
     " rsp len=%d code 0x%x\n",
     rsp_info,
     rsp_len, rsp_info_code);





  if ((fcprsp->rspStatus2 & RSP_LEN_VALID) &&
      ((rsp_len == 8) || (rsp_len == 4))) {
   switch (rsp_info_code) {
   case 131:
    lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
       "0715 Task Mgmt No Failure\n");
    ret = SUCCESS;
    break;
   case 128:
    lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
       "0716 Task Mgmt Target "
      "reject\n");
    break;
   case 129:
    lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
       "0717 Task Mgmt Target "
      "failed TM\n");
    break;
   case 130:
    lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
       "0718 Task Mgmt to invalid "
      "LUN\n");
    break;
   }
  }
 }
 return ret;
}
