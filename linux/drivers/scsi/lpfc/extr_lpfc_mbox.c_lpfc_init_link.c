
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int feaLevelHigh; } ;
struct TYPE_16__ {TYPE_3__ rev; } ;
struct lpfc_hba {int cfg_topology; int fc_pref_ALPA; TYPE_6__ vpd; TYPE_2__* pcidev; } ;
typedef TYPE_6__ lpfc_vpd_t ;
struct TYPE_14__ {int link_flags; int fabric_AL_PA; void* link_speed; } ;
struct TYPE_15__ {TYPE_4__ varInitLnk; } ;
struct TYPE_17__ {TYPE_5__ un; int mbxOwner; scalar_t__ mbxCommand; } ;
struct TYPE_11__ {TYPE_7__ mb; } ;
struct TYPE_18__ {TYPE_1__ u; } ;
struct TYPE_12__ {scalar_t__ device; } ;
typedef TYPE_7__ MAILBOX_t ;
typedef TYPE_8__ LPFC_MBOXQ_t ;


 int FLAGS_IMED_ABORT ;
 int FLAGS_LINK_SPEED ;

 int FLAGS_TOPOLOGY_FAILOVER ;




 void* LINK_SPEED_10G ;
 void* LINK_SPEED_16G ;
 void* LINK_SPEED_1G ;
 void* LINK_SPEED_2G ;
 void* LINK_SPEED_32G ;
 void* LINK_SPEED_4G ;
 void* LINK_SPEED_64G ;
 void* LINK_SPEED_8G ;
 void* LINK_SPEED_AUTO ;
 scalar_t__ MBX_INIT_LINK ;
 int OWN_HOST ;
 scalar_t__ PCI_DEVICE_ID_LANCER_G6_FC ;
 scalar_t__ PCI_DEVICE_ID_LANCER_G7_FC ;
 int memset (TYPE_8__*,int ,int) ;

void
lpfc_init_link(struct lpfc_hba * phba,
        LPFC_MBOXQ_t * pmb, uint32_t topology, uint32_t linkspeed)
{
 lpfc_vpd_t *vpd;
 MAILBOX_t *mb;

 mb = &pmb->u.mb;
 memset(pmb, 0, sizeof (LPFC_MBOXQ_t));

 switch (topology) {
 case 139:
  mb->un.varInitLnk.link_flags = 140;
  mb->un.varInitLnk.link_flags |= FLAGS_TOPOLOGY_FAILOVER;
  break;
 case 137:
  mb->un.varInitLnk.link_flags = 137;
  break;
 case 140:
  mb->un.varInitLnk.link_flags = 140;
  break;
 case 138:
  mb->un.varInitLnk.link_flags = 137;
  mb->un.varInitLnk.link_flags |= FLAGS_TOPOLOGY_FAILOVER;
  break;
 case 141:
  mb->un.varInitLnk.link_flags = 141;
  break;
 }

 if ((phba->pcidev->device == PCI_DEVICE_ID_LANCER_G6_FC ||
      phba->pcidev->device == PCI_DEVICE_ID_LANCER_G7_FC) &&
     mb->un.varInitLnk.link_flags & 140) {
  mb->un.varInitLnk.link_flags = 137;
  phba->cfg_topology = 137;
 }


 mb->un.varInitLnk.link_flags |= FLAGS_IMED_ABORT;




 vpd = &phba->vpd;
 if (vpd->rev.feaLevelHigh >= 0x02){
  switch(linkspeed){
  case 134:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_1G;
   break;
  case 133:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_2G;
   break;
  case 131:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_4G;
   break;
  case 129:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_8G;
   break;
  case 136:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_10G;
   break;
  case 135:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_16G;
   break;
  case 132:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_32G;
   break;
  case 130:
   mb->un.varInitLnk.link_flags |= FLAGS_LINK_SPEED;
   mb->un.varInitLnk.link_speed = LINK_SPEED_64G;
   break;
  case 128:
  default:
   mb->un.varInitLnk.link_speed = LINK_SPEED_AUTO;
   break;
  }

 }
 else
  mb->un.varInitLnk.link_speed = LINK_SPEED_AUTO;

 mb->mbxCommand = (volatile uint8_t)MBX_INIT_LINK;
 mb->mbxOwner = OWN_HOST;
 mb->un.varInitLnk.fabric_AL_PA = phba->fc_pref_ALPA;
 return;
}
