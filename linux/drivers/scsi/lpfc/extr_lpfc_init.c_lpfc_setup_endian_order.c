
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int sli_intf; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_1__ sli4_hba; } ;
typedef int endian_mb_data ;
struct TYPE_8__ {int mqe; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST_ENDIAN_HIGH_WORD1 ;
 int HOST_ENDIAN_LOW_WORD0 ;
 int KERN_ERR ;
 int LOG_INIT ;




 int MBX_POLL ;
 int MBX_SUCCESS ;
 int bf_get (int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_3__*,int ) ;
 int memcpy (int *,int**,int) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_3__*,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
lpfc_setup_endian_order(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *mboxq;
 uint32_t if_type, rc = 0;
 uint32_t endian_mb_data[2] = {HOST_ENDIAN_LOW_WORD0,
          HOST_ENDIAN_HIGH_WORD1};

 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
 switch (if_type) {
 case 131:
  mboxq = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool,
             GFP_KERNEL);
  if (!mboxq) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0492 Unable to allocate memory for "
     "issuing SLI_CONFIG_SPECIAL mailbox "
     "command\n");
   return -ENOMEM;
  }





  memset(mboxq, 0, sizeof(LPFC_MBOXQ_t));
  memcpy(&mboxq->u.mqe, &endian_mb_data, sizeof(endian_mb_data));
  rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_POLL);
  if (rc != MBX_SUCCESS) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0493 SLI_CONFIG_SPECIAL mailbox "
     "failed with status x%x\n",
     rc);
   rc = -EIO;
  }
  mempool_free(mboxq, phba->mbox_mem_pool);
  break;
 case 128:
 case 129:
 case 130:
 default:
  break;
 }
 return rc;
}
