
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scsi_qla_host {int dummy; } ;







 int TCM_ACA_TAG ;
 int TCM_HEAD_TAG ;
 int TCM_ORDERED_TAG ;
 int TCM_SIMPLE_TAG ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int) ;
 int ql_dbg_tgt_mgt ;

__attribute__((used)) static inline int qlt_get_fcp_task_attr(struct scsi_qla_host *vha,
 uint8_t task_codes)
{
 int fcp_task_attr;

 switch (task_codes) {
 case 129:
  fcp_task_attr = TCM_SIMPLE_TAG;
  break;
 case 131:
  fcp_task_attr = TCM_HEAD_TAG;
  break;
 case 130:
  fcp_task_attr = TCM_ORDERED_TAG;
  break;
 case 132:
  fcp_task_attr = TCM_ACA_TAG;
  break;
 case 128:
  fcp_task_attr = TCM_SIMPLE_TAG;
  break;
 default:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf05d,
      "qla_target: unknown task code %x, use ORDERED instead\n",
      task_codes);
  fcp_task_attr = TCM_ORDERED_TAG;
  break;
 }

 return fcp_task_attr;
}
