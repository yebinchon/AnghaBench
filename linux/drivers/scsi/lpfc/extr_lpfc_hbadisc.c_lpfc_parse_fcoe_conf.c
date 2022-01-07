
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;


 int FCOE_CONN_TBL_TYPE ;
 int FCOE_PARAM_TYPE ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_REGION23_SIGNATURE ;
 scalar_t__ LPFC_REGION23_VERSION ;
 scalar_t__* lpfc_get_rec_conf23 (scalar_t__*,int,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_read_fcf_conn_tbl (struct lpfc_hba*,scalar_t__*) ;
 int lpfc_read_fcoe_param (struct lpfc_hba*,scalar_t__*) ;
 scalar_t__ memcmp (scalar_t__*,int ,int) ;

void
lpfc_parse_fcoe_conf(struct lpfc_hba *phba,
  uint8_t *buff,
  uint32_t size)
{
 uint32_t offset = 0;
 uint8_t *rec_ptr;





 if (size < 2*sizeof(uint32_t))
  return;


 if (memcmp(buff, LPFC_REGION23_SIGNATURE, 4)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2567 Config region 23 has bad signature\n");
  return;
 }

 offset += 4;


 if (buff[offset] != LPFC_REGION23_VERSION) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2568 Config region 23 has bad version\n");
  return;
 }
 offset += 4;


 rec_ptr = lpfc_get_rec_conf23(&buff[offset],
   size - offset, FCOE_PARAM_TYPE);
 if (rec_ptr)
  lpfc_read_fcoe_param(phba, rec_ptr);


 rec_ptr = lpfc_get_rec_conf23(&buff[offset],
  size - offset, FCOE_CONN_TBL_TYPE);
 if (rec_ptr)
  lpfc_read_fcf_conn_tbl(phba, rec_ptr);

}
