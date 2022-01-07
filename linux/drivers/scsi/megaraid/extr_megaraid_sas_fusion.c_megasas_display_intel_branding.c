
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {TYPE_2__* host; TYPE_1__* pdev; } ;
struct TYPE_4__ {int host_no; } ;
struct TYPE_3__ {scalar_t__ subsystem_vendor; int device; int dev; int subsystem_device; } ;


 int MEGARAID_INTEL_RMS3BC160_BRANDING ;

 int MEGARAID_INTEL_RS3DC040_BRANDING ;

 int MEGARAID_INTEL_RS3DC080_BRANDING ;

 int MEGARAID_INTEL_RS3MC044_BRANDING ;

 int MEGARAID_INTEL_RS3SC008_BRANDING ;

 int MEGARAID_INTEL_RS3WC040_BRANDING ;

 int MEGARAID_INTEL_RS3WC080_BRANDING ;





 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int dev_info (int *,char*,int ,int ) ;

__attribute__((used)) static void
megasas_display_intel_branding(struct megasas_instance *instance)
{
 if (instance->pdev->subsystem_vendor != PCI_VENDOR_ID_INTEL)
  return;

 switch (instance->pdev->device) {
 case 128:
  switch (instance->pdev->subsystem_device) {
  case 136:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3DC080_BRANDING);
   break;
  case 137:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3DC040_BRANDING);
   break;
  case 134:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3SC008_BRANDING);
   break;
  case 135:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3MC044_BRANDING);
   break;
  default:
   break;
  }
  break;
 case 129:
  switch (instance->pdev->subsystem_device) {
  case 132:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3WC080_BRANDING);
   break;
  case 133:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RS3WC040_BRANDING);
   break;
  default:
   break;
  }
  break;
 case 131:
 case 130:
  switch (instance->pdev->subsystem_device) {
  case 138:
   dev_info(&instance->pdev->dev, "scsi host %d: %s\n",
    instance->host->host_no,
    MEGARAID_INTEL_RMS3BC160_BRANDING);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }
}
