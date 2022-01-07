
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int reg ;


 int PCS_MMD_SELECT ;
 unsigned int ioread32 (void*) ;
 int iowrite32 (unsigned int,void*) ;

__attribute__((used)) static unsigned int xmdio_read(void *ioaddr, unsigned int mmd,
          unsigned int reg)
{
 unsigned int mmd_address, value;

 mmd_address = (mmd << 16) | ((reg) & 0xffff);
 iowrite32(mmd_address >> 8, ioaddr + (PCS_MMD_SELECT << 2));
 value = ioread32(ioaddr + ((mmd_address & 0xff) << 2));
 return value;
}
