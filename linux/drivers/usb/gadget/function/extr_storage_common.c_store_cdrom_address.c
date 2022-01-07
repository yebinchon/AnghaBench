
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int put_unaligned_be32 (int,int*) ;

void store_cdrom_address(u8 *dest, int msf, u32 addr)
{
 if (msf) {

  addr >>= 2;
  addr += 2*75;
  dest[3] = addr % 75;
  addr /= 75;
  dest[2] = addr % 60;
  addr /= 60;
  dest[1] = addr;
  dest[0] = 0;
 } else {

  put_unaligned_be32(addr, dest);
 }
}
