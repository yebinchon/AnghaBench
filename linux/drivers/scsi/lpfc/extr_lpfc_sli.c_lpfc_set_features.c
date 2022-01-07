
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli4_cfg_mhdr {int dummy; } ;
struct lpfc_mbx_set_feature {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct TYPE_12__ {int feature; int param_len; } ;
struct TYPE_8__ {TYPE_7__ set_feature; } ;
struct TYPE_9__ {TYPE_1__ un; } ;
struct TYPE_10__ {TYPE_2__ mqe; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int LPFC_MBOX_OPCODE_SET_FEATURES ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;


 int LPFC_SLI4_MBX_EMBED ;
 int bf_set (int ,TYPE_7__*,int) ;
 int lpfc_mbx_set_feature_UER ;
 int lpfc_mbx_set_feature_mds ;
 int lpfc_mbx_set_feature_mds_deep_loopbk ;
 int lpfc_sli4_config (struct lpfc_hba*,TYPE_4__*,int ,int ,int,int ) ;

__attribute__((used)) static void
lpfc_set_features(struct lpfc_hba *phba, LPFC_MBOXQ_t *mbox,
    uint32_t feature)
{
 uint32_t len;

 len = sizeof(struct lpfc_mbx_set_feature) -
  sizeof(struct lpfc_sli4_cfg_mhdr);
 lpfc_sli4_config(phba, mbox, LPFC_MBOX_SUBSYSTEM_COMMON,
    LPFC_MBOX_OPCODE_SET_FEATURES, len,
    LPFC_SLI4_MBX_EMBED);

 switch (feature) {
 case 128:
  bf_set(lpfc_mbx_set_feature_UER,
         &mbox->u.mqe.un.set_feature, 1);
  mbox->u.mqe.un.set_feature.feature = 128;
  mbox->u.mqe.un.set_feature.param_len = 8;
  break;
 case 129:
  bf_set(lpfc_mbx_set_feature_mds,
         &mbox->u.mqe.un.set_feature, 1);
  bf_set(lpfc_mbx_set_feature_mds_deep_loopbk,
         &mbox->u.mqe.un.set_feature, 1);
  mbox->u.mqe.un.set_feature.feature = 129;
  mbox->u.mqe.un.set_feature.param_len = 8;
  break;
 }

 return;
}
