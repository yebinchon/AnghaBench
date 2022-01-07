
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


union lpfc_sli4_cfg_shdr {int request; } ;
typedef scalar_t__ uint8_t ;
struct TYPE_10__ {union lpfc_sli4_cfg_shdr cfg_shdr; int cfg_mhdr; } ;
struct lpfc_mbx_sli4_config {TYPE_2__ header; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_11__ {struct lpfc_mbx_sli4_config sli4_config; } ;
struct TYPE_12__ {TYPE_3__ un; } ;
struct TYPE_9__ {scalar_t__ mbxCommand; } ;
struct TYPE_13__ {TYPE_4__ mqe; TYPE_1__ mb; } ;
struct TYPE_15__ {TYPE_6__* sge_array; TYPE_5__ u; } ;
struct TYPE_14__ {scalar_t__* addr; } ;
typedef TYPE_7__ LPFC_MBOXQ_t ;


 scalar_t__ LPFC_MBOX_OPCODE_NA ;
 scalar_t__ MBX_SLI4_CONFIG ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_mbox_hdr_emb ;
 int lpfc_mbox_hdr_opcode ;
 scalar_t__ unlikely (int) ;

uint8_t
lpfc_sli_config_mbox_opcode_get(struct lpfc_hba *phba, LPFC_MBOXQ_t *mbox)
{
 struct lpfc_mbx_sli4_config *sli4_cfg;
 union lpfc_sli4_cfg_shdr *cfg_shdr;

 if (mbox->u.mb.mbxCommand != MBX_SLI4_CONFIG)
  return LPFC_MBOX_OPCODE_NA;
 sli4_cfg = &mbox->u.mqe.un.sli4_config;


 if (bf_get(lpfc_mbox_hdr_emb, &sli4_cfg->header.cfg_mhdr)) {
  cfg_shdr = &mbox->u.mqe.un.sli4_config.header.cfg_shdr;
  return bf_get(lpfc_mbox_hdr_opcode, &cfg_shdr->request);
 }


 if (unlikely(!mbox->sge_array))
  return LPFC_MBOX_OPCODE_NA;
 cfg_shdr = (union lpfc_sli4_cfg_shdr *)mbox->sge_array->addr[0];
 return bf_get(lpfc_mbox_hdr_opcode, &cfg_shdr->request);
}
