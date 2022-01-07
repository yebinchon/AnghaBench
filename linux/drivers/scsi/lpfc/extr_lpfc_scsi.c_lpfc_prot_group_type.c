
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct lpfc_hba {int dummy; } ;


 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_PG_TYPE_DIF_BUF ;
 int LPFC_PG_TYPE_INVALID ;
 int LPFC_PG_TYPE_NO_DIF ;






 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,unsigned char) ;
 unsigned char scsi_get_prot_op (struct scsi_cmnd*) ;

__attribute__((used)) static int
lpfc_prot_group_type(struct lpfc_hba *phba, struct scsi_cmnd *sc)
{
 int ret = LPFC_PG_TYPE_INVALID;
 unsigned char op = scsi_get_prot_op(sc);

 switch (op) {
 case 131:
 case 130:
  ret = LPFC_PG_TYPE_NO_DIF;
  break;
 case 133:
 case 128:
 case 132:
 case 129:
  ret = LPFC_PG_TYPE_DIF_BUF;
  break;
 default:
  if (phba)
   lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
     "9021 Unsupported protection op:%d\n",
     op);
  break;
 }
 return ret;
}
