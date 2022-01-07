
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str (unsigned short) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int imm_nibble_in(unsigned short base, char *buffer, int len)
{
 unsigned char l;
 int i;




 w_ctr(base, 0x4);
 for (i = len; i; i--) {
  w_ctr(base, 0x6);
  l = (r_str(base) & 0xf0) >> 4;
  w_ctr(base, 0x5);
  *buffer++ = (r_str(base) & 0xf0) | l;
  w_ctr(base, 0x4);
 }
 return 1;
}
