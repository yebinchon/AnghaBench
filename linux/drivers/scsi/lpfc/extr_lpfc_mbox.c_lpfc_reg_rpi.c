
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct serv_parm {int dummy; } ;
struct TYPE_15__ {scalar_t__* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int * vpi_ids; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int phys; int * virt; int list; } ;
struct TYPE_16__ {int bdeSize; } ;
struct TYPE_17__ {TYPE_3__ f; } ;
struct TYPE_18__ {int addrLow; int addrHigh; TYPE_4__ tus; } ;
struct TYPE_19__ {TYPE_5__ sp64; } ;
struct TYPE_20__ {TYPE_6__ un; int did; int vpi; scalar_t__ rpi; } ;
struct TYPE_21__ {TYPE_7__ varRegLogin; } ;
struct TYPE_22__ {TYPE_8__ un; void* mbxCommand; int mbxOwner; } ;
struct TYPE_14__ {TYPE_9__ mb; } ;
struct TYPE_13__ {int * ctx_buf; TYPE_1__ u; } ;
typedef TYPE_9__ MAILBOX_t ;
typedef TYPE_10__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_WARNING ;
 int LOG_MBOX ;
 scalar_t__ LPFC_SLI_REV3 ;
 scalar_t__ LPFC_SLI_REV4 ;
 void* MBX_REG_LOGIN64 ;
 int OWN_HOST ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 int * lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,size_t,int ,size_t) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_10__*,int ,int) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;

int
lpfc_reg_rpi(struct lpfc_hba *phba, uint16_t vpi, uint32_t did,
      uint8_t *param, LPFC_MBOXQ_t *pmb, uint16_t rpi)
{
 MAILBOX_t *mb = &pmb->u.mb;
 uint8_t *sparam;
 struct lpfc_dmabuf *mp;

 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 mb->un.varRegLogin.rpi = 0;
 if (phba->sli_rev == LPFC_SLI_REV4)
  mb->un.varRegLogin.rpi = phba->sli4_hba.rpi_ids[rpi];
 if (phba->sli_rev >= LPFC_SLI_REV3)
  mb->un.varRegLogin.vpi = phba->vpi_ids[vpi];
 mb->un.varRegLogin.did = did;
 mb->mbxOwner = OWN_HOST;

 mp = kmalloc(sizeof (struct lpfc_dmabuf), GFP_KERNEL);
 if (mp)
  mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);
 if (!mp || !mp->virt) {
  kfree(mp);
  mb->mbxCommand = MBX_REG_LOGIN64;

  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX,
    "0302 REG_LOGIN: no buffers, VPI:%d DID:x%x, "
    "rpi x%x\n", vpi, did, rpi);
  return 1;
 }
 INIT_LIST_HEAD(&mp->list);
 sparam = mp->virt;


 memcpy(sparam, param, sizeof (struct serv_parm));


 pmb->ctx_buf = (uint8_t *)mp;

 mb->mbxCommand = MBX_REG_LOGIN64;
 mb->un.varRegLogin.un.sp64.tus.f.bdeSize = sizeof (struct serv_parm);
 mb->un.varRegLogin.un.sp64.addrHigh = putPaddrHigh(mp->phys);
 mb->un.varRegLogin.un.sp64.addrLow = putPaddrLow(mp->phys);

 return 0;
}
