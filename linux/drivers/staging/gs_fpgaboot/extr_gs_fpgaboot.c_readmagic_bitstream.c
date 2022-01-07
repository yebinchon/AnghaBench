
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int bits_magic ;
 int memcmp (int *,int ,int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int read_bitstream (int *,int *,int*,int) ;

__attribute__((used)) static int readmagic_bitstream(u8 *bitdata, int *offset)
{
 u8 buf[13];
 int r;

 read_bitstream(bitdata, buf, offset, 13);
 r = memcmp(buf, bits_magic, 13);
 if (r) {
  pr_err("error: corrupted header\n");
  return -EINVAL;
 }
 pr_info("bitstream file magic number Ok\n");

 *offset = 13;

 return 0;
}
