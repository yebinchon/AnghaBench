
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ PCI_DEVICE_ID_VORTEX_GDT6555 ;
 scalar_t__ PCI_DEVICE_ID_VORTEX_GDT6x17RP ;
 scalar_t__ PCI_DEVICE_ID_VORTEX_GDTMAXRP ;
 scalar_t__ PCI_DEVICE_ID_VORTEX_GDTNEWRX ;
 scalar_t__ PCI_DEVICE_ID_VORTEX_GDTNEWRX2 ;

__attribute__((used)) static bool gdth_search_vortex(u16 device)
{
 if (device <= PCI_DEVICE_ID_VORTEX_GDT6555)
  return 1;
 if (device >= PCI_DEVICE_ID_VORTEX_GDT6x17RP &&
     device <= PCI_DEVICE_ID_VORTEX_GDTMAXRP)
  return 1;
 if (device == PCI_DEVICE_ID_VORTEX_GDTNEWRX ||
     device == PCI_DEVICE_ID_VORTEX_GDTNEWRX2)
  return 1;
 return 0;
}
