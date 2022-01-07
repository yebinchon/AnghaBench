
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int reg ;


 int PCS_MMD_SELECT ;
 int iowrite32 (unsigned int,void*) ;

__attribute__((used)) static void xmdio_write(void *ioaddr, unsigned int mmd,
   unsigned int reg, unsigned int value)
{
 unsigned int mmd_address;

 mmd_address = (mmd << 16) | ((reg) & 0xffff);
 iowrite32(mmd_address >> 8, ioaddr + (PCS_MMD_SELECT << 2));
 iowrite32(value, ioaddr + ((mmd_address & 0xff) << 2));
}
