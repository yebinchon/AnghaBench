
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u16 ;


 int EINVAL ;
 int get_unaligned_be16 (char*) ;
 int pr_err (char*) ;
 int read_bitstream (char*,char*,int*,int) ;

__attribute__((used)) static int readinfo_bitstream(u8 *bitdata, u8 *buf, int size, int *offset)
{
 u8 tbuf[2];
 u16 len;


 read_bitstream(bitdata, tbuf, offset, 1);


 read_bitstream(bitdata, tbuf, offset, 2);

 len = get_unaligned_be16(tbuf);
 if (len >= size) {
  pr_err("error: readinfo buffer too small\n");
  return -EINVAL;
 }

 read_bitstream(bitdata, buf, offset, len);
 buf[len] = '\0';

 return 0;
}
