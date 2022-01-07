
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_register {int word0; } ;
struct TYPE_6__ {int ERR2regaddr; int ERR1regaddr; int STATUSregaddr; } ;
struct TYPE_5__ {int UERRHIregaddr; int UERRLOregaddr; } ;
struct TYPE_7__ {TYPE_2__ if_type2; TYPE_1__ if_type0; } ;
struct TYPE_8__ {int ue_mask_lo; int ue_mask_hi; TYPE_3__ u; int PSMPHRregaddr; struct lpfc_register sli_intf; } ;
struct lpfc_hba {int* work_status; int hba_flag; int work_ha; TYPE_4__ sli4_hba; int work_hs; } ;


 int HA_ERATT ;
 int HBA_ERATT_HANDLED ;
 int KERN_ERR ;
 int LOG_INIT ;




 int UNPLUG_ERR ;
 int bf_get (int ,struct lpfc_register*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_readl (int ,int*) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sliport_status_err ;
 void* readl (int ) ;

__attribute__((used)) static int
lpfc_sli4_eratt_read(struct lpfc_hba *phba)
{
 uint32_t uerr_sta_hi, uerr_sta_lo;
 uint32_t if_type, portsmphr;
 struct lpfc_register portstat_reg;





 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
 switch (if_type) {
 case 131:
  if (lpfc_readl(phba->sli4_hba.u.if_type0.UERRLOregaddr,
   &uerr_sta_lo) ||
   lpfc_readl(phba->sli4_hba.u.if_type0.UERRHIregaddr,
   &uerr_sta_hi)) {
   phba->work_hs |= UNPLUG_ERR;
   phba->work_ha |= HA_ERATT;
   phba->hba_flag |= HBA_ERATT_HANDLED;
   return 1;
  }
  if ((~phba->sli4_hba.ue_mask_lo & uerr_sta_lo) ||
      (~phba->sli4_hba.ue_mask_hi & uerr_sta_hi)) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "1423 HBA Unrecoverable error: "
     "uerr_lo_reg=0x%x, uerr_hi_reg=0x%x, "
     "ue_mask_lo_reg=0x%x, "
     "ue_mask_hi_reg=0x%x\n",
     uerr_sta_lo, uerr_sta_hi,
     phba->sli4_hba.ue_mask_lo,
     phba->sli4_hba.ue_mask_hi);
   phba->work_status[0] = uerr_sta_lo;
   phba->work_status[1] = uerr_sta_hi;
   phba->work_ha |= HA_ERATT;
   phba->hba_flag |= HBA_ERATT_HANDLED;
   return 1;
  }
  break;
 case 129:
 case 128:
  if (lpfc_readl(phba->sli4_hba.u.if_type2.STATUSregaddr,
   &portstat_reg.word0) ||
   lpfc_readl(phba->sli4_hba.PSMPHRregaddr,
   &portsmphr)){
   phba->work_hs |= UNPLUG_ERR;
   phba->work_ha |= HA_ERATT;
   phba->hba_flag |= HBA_ERATT_HANDLED;
   return 1;
  }
  if (bf_get(lpfc_sliport_status_err, &portstat_reg)) {
   phba->work_status[0] =
    readl(phba->sli4_hba.u.if_type2.ERR1regaddr);
   phba->work_status[1] =
    readl(phba->sli4_hba.u.if_type2.ERR2regaddr);
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "2885 Port Status Event: "
     "port status reg 0x%x, "
     "port smphr reg 0x%x, "
     "error 1=0x%x, error 2=0x%x\n",
     portstat_reg.word0,
     portsmphr,
     phba->work_status[0],
     phba->work_status[1]);
   phba->work_ha |= HA_ERATT;
   phba->hba_flag |= HBA_ERATT_HANDLED;
   return 1;
  }
  break;
 case 130:
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2886 HBA Error Attention on unsupported "
    "if type %d.", if_type);
  return 1;
 }

 return 0;
}
