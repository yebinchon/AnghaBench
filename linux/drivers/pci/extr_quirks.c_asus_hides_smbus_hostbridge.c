
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ device; int subsystem_device; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL_7205_0 ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82801DB_2 ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82810_IG3 ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82815_CGC ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82845G_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82845_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82850_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82855GM_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82855PM_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82865_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82875_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_82915GM_HB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_E7501_MCH ;
 scalar_t__ PCI_VENDOR_ID_ASUSTEK ;
 scalar_t__ PCI_VENDOR_ID_COMPAQ ;
 scalar_t__ PCI_VENDOR_ID_HP ;
 scalar_t__ PCI_VENDOR_ID_SAMSUNG ;
 int asus_hides_smbus ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void asus_hides_smbus_hostbridge(struct pci_dev *dev)
{
 if (unlikely(dev->subsystem_vendor == PCI_VENDOR_ID_ASUSTEK)) {
  if (dev->device == PCI_DEVICE_ID_INTEL_82845_HB)
   switch (dev->subsystem_device) {
   case 0x8025:
   case 0x8070:
   case 0x8088:
   case 0x1626:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82845G_HB)
   switch (dev->subsystem_device) {
   case 0x80b1:
   case 0x80b2:
   case 0x8093:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82850_HB)
   switch (dev->subsystem_device) {
   case 0x8030:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_7205_0)
   switch (dev->subsystem_device) {
   case 0x8070:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_E7501_MCH)
   switch (dev->subsystem_device) {
   case 0x80c9:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82855GM_HB)
   switch (dev->subsystem_device) {
   case 0x1751:
   case 0x1821:
   case 0x1897:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82855PM_HB)
   switch (dev->subsystem_device) {
   case 0x184b:
   case 0x186a:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82865_HB)
   switch (dev->subsystem_device) {
   case 0x80f2:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82915GM_HB)
   switch (dev->subsystem_device) {
   case 0x1882:
   case 0x1977:
    asus_hides_smbus = 1;
   }
 } else if (unlikely(dev->subsystem_vendor == PCI_VENDOR_ID_HP)) {
  if (dev->device == PCI_DEVICE_ID_INTEL_82855PM_HB)
   switch (dev->subsystem_device) {
   case 0x088C:
   case 0x0890:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82865_HB)
   switch (dev->subsystem_device) {
   case 0x12bc:
   case 0x12bd:
   case 0x006a:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82875_HB)
   switch (dev->subsystem_device) {
   case 0x12bf:
    asus_hides_smbus = 1;
   }
 } else if (unlikely(dev->subsystem_vendor == PCI_VENDOR_ID_SAMSUNG)) {
  if (dev->device == PCI_DEVICE_ID_INTEL_82855PM_HB)
   switch (dev->subsystem_device) {
   case 0xC00C:
    asus_hides_smbus = 1;
  }
 } else if (unlikely(dev->subsystem_vendor == PCI_VENDOR_ID_COMPAQ)) {
  if (dev->device == PCI_DEVICE_ID_INTEL_82855PM_HB)
   switch (dev->subsystem_device) {
   case 0x0058:
    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82810_IG3)
   switch (dev->subsystem_device) {
   case 0xB16C:



    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82801DB_2)
   switch (dev->subsystem_device) {
   case 0x00b8:
   case 0x00b9:
   case 0x00ba:





    asus_hides_smbus = 1;
   }
  else if (dev->device == PCI_DEVICE_ID_INTEL_82815_CGC)
   switch (dev->subsystem_device) {
   case 0x001A:



    asus_hides_smbus = 1;
   }
 }
}
