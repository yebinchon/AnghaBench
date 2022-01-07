
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct lpfc_register {int word0; } ;
union lpfc_sli4_cfg_shdr {struct lpfc_register response; } ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_18__ {int CTRLregaddr; int ERR2regaddr; int ERR1regaddr; int STATUSregaddr; } ;
struct TYPE_19__ {TYPE_6__ if_type2; } ;
struct TYPE_20__ {TYPE_7__ u; struct lpfc_register sli_intf; } ;
struct lpfc_hba {int pcidev; TYPE_8__ sli4_hba; void** work_status; int mbox_mem_pool; } ;
struct TYPE_13__ {int cfg_shdr; } ;
struct TYPE_14__ {TYPE_1__ header; } ;
struct TYPE_15__ {TYPE_2__ sli4_config; } ;
struct TYPE_16__ {TYPE_3__ un; } ;
struct TYPE_17__ {TYPE_4__ mqe; } ;
struct TYPE_21__ {TYPE_5__ u; } ;
typedef TYPE_9__ LPFC_MBOXQ_t ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MBOX_OPCODE_FUNCTION_RESET ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;
 int LPFC_SLI4_MBX_EMBED ;
 int LPFC_SLIPORT_INIT_PORT ;
 int LPFC_SLIPORT_LITTLE_ENDIAN ;




 int MBX_POLL ;
 int MBX_TIMEOUT ;
 int PCI_DEVICE_ID ;
 int bf_get (int ,struct lpfc_register*) ;
 int bf_set (int ,struct lpfc_register*,int ) ;
 int lpfc_mbox_hdr_add_status ;
 int lpfc_mbox_hdr_status ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_readl (int ,int *) ;
 int lpfc_sli4_config (struct lpfc_hba*,TYPE_9__*,int ,int ,int ,int ) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_9__*,int ) ;
 int lpfc_sliport_ctrl_end ;
 int lpfc_sliport_ctrl_ip ;
 int lpfc_sliport_status_rdy ;
 int lpfc_sliport_status_rn ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_9__*,int ) ;
 int msleep (int) ;
 int pci_read_config_word (int ,int ,int *) ;
 void* readl (int ) ;
 int writel (int ,int ) ;

int
lpfc_pci_function_reset(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *mboxq;
 uint32_t rc = 0, if_type;
 uint32_t shdr_status, shdr_add_status;
 uint32_t rdy_chk;
 uint32_t port_reset = 0;
 union lpfc_sli4_cfg_shdr *shdr;
 struct lpfc_register reg_data;
 uint16_t devid;

 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
 switch (if_type) {
 case 131:
  mboxq = (LPFC_MBOXQ_t *) mempool_alloc(phba->mbox_mem_pool,
             GFP_KERNEL);
  if (!mboxq) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0494 Unable to allocate memory for "
     "issuing SLI_FUNCTION_RESET mailbox "
     "command\n");
   return -ENOMEM;
  }


  lpfc_sli4_config(phba, mboxq, LPFC_MBOX_SUBSYSTEM_COMMON,
     LPFC_MBOX_OPCODE_FUNCTION_RESET, 0,
     LPFC_SLI4_MBX_EMBED);
  rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_POLL);
  shdr = (union lpfc_sli4_cfg_shdr *)
   &mboxq->u.mqe.un.sli4_config.header.cfg_shdr;
  shdr_status = bf_get(lpfc_mbox_hdr_status, &shdr->response);
  shdr_add_status = bf_get(lpfc_mbox_hdr_add_status,
      &shdr->response);
  if (rc != MBX_TIMEOUT)
   mempool_free(mboxq, phba->mbox_mem_pool);
  if (shdr_status || shdr_add_status || rc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0495 SLI_FUNCTION_RESET mailbox "
     "failed with status x%x add_status x%x,"
     " mbx status x%x\n",
     shdr_status, shdr_add_status, rc);
   rc = -ENXIO;
  }
  break;
 case 129:
 case 128:
wait:





  for (rdy_chk = 0; rdy_chk < 1500; rdy_chk++) {
   if (lpfc_readl(phba->sli4_hba.u.if_type2.
    STATUSregaddr, &reg_data.word0)) {
    rc = -ENODEV;
    goto out;
   }
   if (bf_get(lpfc_sliport_status_rdy, &reg_data))
    break;
   msleep(20);
  }

  if (!bf_get(lpfc_sliport_status_rdy, &reg_data)) {
   phba->work_status[0] = readl(
    phba->sli4_hba.u.if_type2.ERR1regaddr);
   phba->work_status[1] = readl(
    phba->sli4_hba.u.if_type2.ERR2regaddr);
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "2890 Port not ready, port status reg "
     "0x%x error 1=0x%x, error 2=0x%x\n",
     reg_data.word0,
     phba->work_status[0],
     phba->work_status[1]);
   rc = -ENODEV;
   goto out;
  }

  if (!port_reset) {



   reg_data.word0 = 0;
   bf_set(lpfc_sliport_ctrl_end, &reg_data,
          LPFC_SLIPORT_LITTLE_ENDIAN);
   bf_set(lpfc_sliport_ctrl_ip, &reg_data,
          LPFC_SLIPORT_INIT_PORT);
   writel(reg_data.word0, phba->sli4_hba.u.if_type2.
          CTRLregaddr);

   pci_read_config_word(phba->pcidev,
          PCI_DEVICE_ID, &devid);

   port_reset = 1;
   msleep(20);
   goto wait;
  } else if (bf_get(lpfc_sliport_status_rn, &reg_data)) {
   rc = -ENODEV;
   goto out;
  }
  break;

 case 130:
 default:
  break;
 }

out:

 if (rc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3317 HBA not functional: IP Reset Failed "
    "try: echo fw_reset > board_mode\n");
  rc = -ENODEV;
 }

 return rc;
}
