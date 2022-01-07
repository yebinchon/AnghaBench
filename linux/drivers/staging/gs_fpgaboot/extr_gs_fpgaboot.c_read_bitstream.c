
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void read_bitstream(u8 *bitdata, u8 *buf, int *offset, int rdsize)
{
 memcpy(buf, bitdata + *offset, rdsize);
 *offset += rdsize;
}
