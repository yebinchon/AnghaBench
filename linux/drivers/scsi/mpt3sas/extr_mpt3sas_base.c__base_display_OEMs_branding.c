
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPT3SAS_ADAPTER {TYPE_1__* pdev; } ;
struct TYPE_2__ {int subsystem_vendor; int subsystem_device; int device; } ;







 int MPT2SAS_DELL_6GBPS_SAS_BRANDING ;
 int MPT2SAS_DELL_6GBPS_SAS_HBA_BRANDING ;


 int MPT2SAS_DELL_PERC_H200_ADAPTER_BRANDING ;

 int MPT2SAS_DELL_PERC_H200_BRANDING ;
 int MPT2SAS_DELL_PERC_H200_EMBEDDED_BRANDING ;

 int MPT2SAS_DELL_PERC_H200_INTEGRATED_BRANDING ;

 int MPT2SAS_DELL_PERC_H200_MODULAR_BRANDING ;


 int MPT2SAS_HP_1_4_INTERNAL_1_4_EXTERNAL_BRANDING ;

 int MPT2SAS_HP_2_4_EXTERNAL_BRANDING ;

 int MPT2SAS_HP_2_4_INTERNAL_BRANDING ;


 int MPT2SAS_HP_DAUGHTER_2_4_INTERNAL_BRANDING ;

 int MPT2SAS_HP_EMBEDDED_2_4_INTERNAL_BRANDING ;

 int MPT2SAS_INTEL_RMS25JB040_BRANDING ;

 int MPT2SAS_INTEL_RMS25JB080_BRANDING ;

 int MPT2SAS_INTEL_RMS25KB040_BRANDING ;

 int MPT2SAS_INTEL_RMS25KB080_BRANDING ;

 int MPT2SAS_INTEL_RMS25LB040_BRANDING ;

 int MPT2SAS_INTEL_RMS25LB080_BRANDING ;

 int MPT2SAS_INTEL_RMS2LL040_BRANDING ;

 int MPT2SAS_INTEL_RMS2LL080_BRANDING ;

 int MPT2SAS_INTEL_RS25GB008_BRANDING ;

 int MPT2SAS_INTEL_SSD910_BRANDING ;

 int MPT3SAS_CISCO_12G_8E_HBA_BRANDING ;

 int MPT3SAS_CISCO_12G_8I_HBA_BRANDING ;

 int MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING ;

 int MPT3SAS_CISCO_12G_COLUSA_MEZZANINE_HBA_BRANDING ;

 int MPT3SAS_DELL_12G_HBA_BRANDING ;

 int MPT3SAS_INTEL_RMS3JC080_BRANDING ;

 int MPT3SAS_INTEL_RS3FC044_BRANDING ;

 int MPT3SAS_INTEL_RS3GC008_BRANDING ;

 int MPT3SAS_INTEL_RS3UC080_BRANDING ;




 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int ) ;

__attribute__((used)) static void
_base_display_OEMs_branding(struct MPT3SAS_ADAPTER *ioc)
{
 if (ioc->pdev->subsystem_vendor != 128)
  return;

 switch (ioc->pdev->subsystem_vendor) {
 case 128:
  switch (ioc->pdev->device) {
  case 164:
   switch (ioc->pdev->subsystem_device) {
   case 142:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS2LL080_BRANDING);
    break;
   case 143:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS2LL040_BRANDING);
    break;
   case 140:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_SSD910_BRANDING);
    break;
   default:
    ioc_info(ioc, "Intel(R) Controller: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  case 163:
   switch (ioc->pdev->subsystem_device) {
   case 141:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RS25GB008_BRANDING);
    break;
   case 148:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25JB080_BRANDING);
    break;
   case 149:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25JB040_BRANDING);
    break;
   case 146:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25KB080_BRANDING);
    break;
   case 147:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25KB040_BRANDING);
    break;
   case 145:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25LB040_BRANDING);
    break;
   case 144:
    ioc_info(ioc, "%s\n",
      MPT2SAS_INTEL_RMS25LB080_BRANDING);
    break;
   default:
    ioc_info(ioc, "Intel(R) Controller: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  case 167:
   switch (ioc->pdev->subsystem_device) {
   case 134:
    ioc_info(ioc, "%s\n",
      MPT3SAS_INTEL_RMS3JC080_BRANDING);
    break;

   case 132:
    ioc_info(ioc, "%s\n",
      MPT3SAS_INTEL_RS3GC008_BRANDING);
    break;
   case 133:
    ioc_info(ioc, "%s\n",
      MPT3SAS_INTEL_RS3FC044_BRANDING);
    break;
   case 131:
    ioc_info(ioc, "%s\n",
      MPT3SAS_INTEL_RS3UC080_BRANDING);
    break;
   default:
    ioc_info(ioc, "Intel(R) Controller: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  default:
   ioc_info(ioc, "Intel(R) Controller: Subsystem ID: 0x%X\n",
     ioc->pdev->subsystem_device);
   break;
  }
  break;
 case 129:
  switch (ioc->pdev->device) {
  case 164:
   switch (ioc->pdev->subsystem_device) {
   case 162:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_6GBPS_SAS_HBA_BRANDING);
    break;
   case 160:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_PERC_H200_ADAPTER_BRANDING);
    break;
   case 158:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_PERC_H200_INTEGRATED_BRANDING);
    break;
   case 157:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_PERC_H200_MODULAR_BRANDING);
    break;
   case 159:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_PERC_H200_EMBEDDED_BRANDING);
    break;
   case 156:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_PERC_H200_BRANDING);
    break;
   case 161:
    ioc_info(ioc, "%s\n",
      MPT2SAS_DELL_6GBPS_SAS_BRANDING);
    break;
   default:
    ioc_info(ioc, "Dell 6Gbps HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  case 167:
   switch (ioc->pdev->subsystem_device) {
   case 135:
    ioc_info(ioc, "%s\n",
      MPT3SAS_DELL_12G_HBA_BRANDING);
    break;
   default:
    ioc_info(ioc, "Dell 12Gbps HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  default:
   ioc_info(ioc, "Dell HBA: Subsystem ID: 0x%X\n",
     ioc->pdev->subsystem_device);
   break;
  }
  break;
 case 130:
  switch (ioc->pdev->device) {
  case 167:
   switch (ioc->pdev->subsystem_device) {
   case 139:
    ioc_info(ioc, "%s\n",
      MPT3SAS_CISCO_12G_8E_HBA_BRANDING);
    break;
   case 138:
    ioc_info(ioc, "%s\n",
      MPT3SAS_CISCO_12G_8I_HBA_BRANDING);
    break;
   case 137:
    ioc_info(ioc, "%s\n",
      MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING);
    break;
   default:
    ioc_info(ioc, "Cisco 12Gbps SAS HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  case 166:
   switch (ioc->pdev->subsystem_device) {
   case 137:
    ioc_info(ioc, "%s\n",
      MPT3SAS_CISCO_12G_AVILA_HBA_BRANDING);
    break;
   case 136:
    ioc_info(ioc, "%s\n",
      MPT3SAS_CISCO_12G_COLUSA_MEZZANINE_HBA_BRANDING);
    break;
   default:
    ioc_info(ioc, "Cisco 12Gbps SAS HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  default:
   ioc_info(ioc, "Cisco SAS HBA: Subsystem ID: 0x%X\n",
     ioc->pdev->subsystem_device);
   break;
  }
  break;
 case 152:
  switch (ioc->pdev->device) {
  case 165:
   switch (ioc->pdev->subsystem_device) {
   case 151:
    ioc_info(ioc, "%s\n",
      MPT2SAS_HP_DAUGHTER_2_4_INTERNAL_BRANDING);
    break;
   default:
    ioc_info(ioc, "HP 6Gbps SAS HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  case 163:
   switch (ioc->pdev->subsystem_device) {
   case 153:
    ioc_info(ioc, "%s\n",
      MPT2SAS_HP_2_4_INTERNAL_BRANDING);
    break;
   case 154:
    ioc_info(ioc, "%s\n",
      MPT2SAS_HP_2_4_EXTERNAL_BRANDING);
    break;
   case 155:
    ioc_info(ioc, "%s\n",
      MPT2SAS_HP_1_4_INTERNAL_1_4_EXTERNAL_BRANDING);
    break;
   case 150:
    ioc_info(ioc, "%s\n",
      MPT2SAS_HP_EMBEDDED_2_4_INTERNAL_BRANDING);
    break;
   default:
    ioc_info(ioc, "HP 6Gbps SAS HBA: Subsystem ID: 0x%X\n",
      ioc->pdev->subsystem_device);
    break;
   }
   break;
  default:
   ioc_info(ioc, "HP SAS HBA: Subsystem ID: 0x%X\n",
     ioc->pdev->subsystem_device);
   break;
  }
 default:
  break;
 }
}
