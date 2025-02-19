
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct lpfc_hba {int sfp_alarm; int sfp_warning; } ;
struct TYPE_2__ {void* function_flags; void* lo_warning; void* hi_warning; void* lo_alarm; void* hi_alarm; } ;
struct fc_rdp_oed_sfp_desc {void* length; TYPE_1__ oed_info; void* tag; } ;


 int LPFC_TRANSGRESSION_HIGH_TEMPERATURE ;
 int LPFC_TRANSGRESSION_LOW_TEMPERATURE ;
 int RDP_OED_DESC_TAG ;
 int RDP_OED_TEMPERATURE ;
 int RDP_OED_TYPE_SHIFT ;
 int RDP_OET_HIGH_ALARM ;
 int RDP_OET_HIGH_WARNING ;
 int RDP_OET_LOW_ALARM ;
 int RDP_OET_LOW_WARNING ;
 size_t SSF_TEMP_HIGH_ALARM ;
 size_t SSF_TEMP_HIGH_WARNING ;
 size_t SSF_TEMP_LOW_ALARM ;
 size_t SSF_TEMP_LOW_WARNING ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static uint32_t
lpfc_rdp_res_oed_temp_desc(struct lpfc_hba *phba,
      struct fc_rdp_oed_sfp_desc *desc, uint8_t *page_a2)
{
 uint32_t flags = 0;

 desc->tag = cpu_to_be32(RDP_OED_DESC_TAG);

 desc->oed_info.hi_alarm = page_a2[SSF_TEMP_HIGH_ALARM];
 desc->oed_info.lo_alarm = page_a2[SSF_TEMP_LOW_ALARM];
 desc->oed_info.hi_warning = page_a2[SSF_TEMP_HIGH_WARNING];
 desc->oed_info.lo_warning = page_a2[SSF_TEMP_LOW_WARNING];

 if (phba->sfp_alarm & LPFC_TRANSGRESSION_HIGH_TEMPERATURE)
  flags |= RDP_OET_HIGH_ALARM;
 if (phba->sfp_alarm & LPFC_TRANSGRESSION_LOW_TEMPERATURE)
  flags |= RDP_OET_LOW_ALARM;
 if (phba->sfp_warning & LPFC_TRANSGRESSION_HIGH_TEMPERATURE)
  flags |= RDP_OET_HIGH_WARNING;
 if (phba->sfp_warning & LPFC_TRANSGRESSION_LOW_TEMPERATURE)
  flags |= RDP_OET_LOW_WARNING;

 flags |= ((0xf & RDP_OED_TEMPERATURE) << RDP_OED_TYPE_SHIFT);
 desc->oed_info.function_flags = cpu_to_be32(flags);
 desc->length = cpu_to_be32(sizeof(desc->oed_info));
 return sizeof(struct fc_rdp_oed_sfp_desc);
}
