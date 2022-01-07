
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int EINVAL ;
 int get_unaligned_be32 (char*) ;
 int pr_err (char*,char) ;
 int read_bitstream (char*,char*,int*,int) ;

__attribute__((used)) static int readlength_bitstream(u8 *bitdata, int *lendata, int *offset)
{
 u8 tbuf[4];


 read_bitstream(bitdata, tbuf, offset, 1);


 if (tbuf[0] != 'e') {
  pr_err("error: length section is not 'e', but %c\n", tbuf[0]);
  return -EINVAL;
 }


 read_bitstream(bitdata, tbuf, offset, 4);

 *lendata = get_unaligned_be32(tbuf);

 return 0;
}
