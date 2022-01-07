
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 pci_size(u64 base, u64 maxbase, u64 mask)
{
 u64 size = mask & maxbase;
 if (!size)
  return 0;





 size = size & ~(size-1);





 if (base == maxbase && ((base | (size - 1)) & mask) != mask)
  return 0;

 return size;
}
