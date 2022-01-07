
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_hba {int fc_linkspeed; int lmt; scalar_t__ cfg_link_speed; } ;
struct TYPE_3__ {void* capabilities; void* speed; } ;
struct TYPE_4__ {TYPE_1__ port_speed; } ;
struct fc_rdp_port_speed_desc {void* length; TYPE_2__ info; void* tag; } ;


 int LMT_10Gb ;
 int LMT_128Gb ;
 int LMT_16Gb ;
 int LMT_1Gb ;
 int LMT_2Gb ;
 int LMT_32Gb ;
 int LMT_4Gb ;
 int LMT_64Gb ;
 int LMT_8Gb ;
 scalar_t__ LPFC_USER_LINK_SPEED_AUTO ;
 int RDP_CAP_UNKNOWN ;
 int RDP_CAP_USER_CONFIGURED ;
 int RDP_PORT_SPEED_DESC_TAG ;
 int RDP_PS_10GB ;
 int RDP_PS_128GB ;
 int RDP_PS_16GB ;
 int RDP_PS_1GB ;
 int RDP_PS_2GB ;
 int RDP_PS_32GB ;
 int RDP_PS_4GB ;
 int RDP_PS_64GB ;
 int RDP_PS_8GB ;
 int RDP_PS_UNKNOWN ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static uint32_t
lpfc_rdp_res_speed(struct fc_rdp_port_speed_desc *desc, struct lpfc_hba *phba)
{
 uint16_t rdp_cap = 0;
 uint16_t rdp_speed;

 desc->tag = cpu_to_be32(RDP_PORT_SPEED_DESC_TAG);

 switch (phba->fc_linkspeed) {
 case 133:
  rdp_speed = RDP_PS_1GB;
  break;
 case 132:
  rdp_speed = RDP_PS_2GB;
  break;
 case 130:
  rdp_speed = RDP_PS_4GB;
  break;
 case 128:
  rdp_speed = RDP_PS_8GB;
  break;
 case 135:
  rdp_speed = RDP_PS_10GB;
  break;
 case 134:
  rdp_speed = RDP_PS_16GB;
  break;
 case 131:
  rdp_speed = RDP_PS_32GB;
  break;
 case 129:
  rdp_speed = RDP_PS_64GB;
  break;
 default:
  rdp_speed = RDP_PS_UNKNOWN;
  break;
 }

 desc->info.port_speed.speed = cpu_to_be16(rdp_speed);

 if (phba->lmt & LMT_128Gb)
  rdp_cap |= RDP_PS_128GB;
 if (phba->lmt & LMT_64Gb)
  rdp_cap |= RDP_PS_64GB;
 if (phba->lmt & LMT_32Gb)
  rdp_cap |= RDP_PS_32GB;
 if (phba->lmt & LMT_16Gb)
  rdp_cap |= RDP_PS_16GB;
 if (phba->lmt & LMT_10Gb)
  rdp_cap |= RDP_PS_10GB;
 if (phba->lmt & LMT_8Gb)
  rdp_cap |= RDP_PS_8GB;
 if (phba->lmt & LMT_4Gb)
  rdp_cap |= RDP_PS_4GB;
 if (phba->lmt & LMT_2Gb)
  rdp_cap |= RDP_PS_2GB;
 if (phba->lmt & LMT_1Gb)
  rdp_cap |= RDP_PS_1GB;

 if (rdp_cap == 0)
  rdp_cap = RDP_CAP_UNKNOWN;
 if (phba->cfg_link_speed != LPFC_USER_LINK_SPEED_AUTO)
  rdp_cap |= RDP_CAP_USER_CONFIGURED;

 desc->info.port_speed.capabilities = cpu_to_be16(rdp_cap);
 desc->length = cpu_to_be32(sizeof(desc->info));
 return sizeof(struct fc_rdp_port_speed_desc);
}
