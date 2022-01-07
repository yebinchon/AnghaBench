
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {void* adapter_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ vendor; int device; } ;


 void* AERO_SERIES ;
 void* INVADER_SERIES ;
 void* MFI_SERIES ;
 int PCI_DEVICE_ID_DELL_PERC5 ;
 scalar_t__ PCI_VENDOR_ID_DELL ;
 void* THUNDERBOLT_SERIES ;
 void* VENTURA_SERIES ;

__attribute__((used)) static inline void megasas_set_adapter_type(struct megasas_instance *instance)
{
 if ((instance->pdev->vendor == PCI_VENDOR_ID_DELL) &&
     (instance->pdev->device == PCI_DEVICE_ID_DELL_PERC5)) {
  instance->adapter_type = MFI_SERIES;
 } else {
  switch (instance->pdev->device) {
  case 145:
  case 144:
  case 143:
  case 142:
   instance->adapter_type = AERO_SERIES;
   break;
  case 129:
  case 141:
  case 135:
  case 130:
  case 128:
  case 140:
   instance->adapter_type = VENTURA_SERIES;
   break;
  case 136:
  case 131:
   instance->adapter_type = THUNDERBOLT_SERIES;
   break;
  case 132:
  case 134:
  case 133:
  case 139:
  case 138:
  case 137:
   instance->adapter_type = INVADER_SERIES;
   break;
  default:
   instance->adapter_type = MFI_SERIES;
   break;
  }
 }
}
