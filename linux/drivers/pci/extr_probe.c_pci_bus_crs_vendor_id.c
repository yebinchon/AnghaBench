
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool pci_bus_crs_vendor_id(u32 l)
{
 return (l & 0xffff) == 0x0001;
}
