
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,int ) ;

__attribute__((used)) static int imm_byte_out(unsigned short base, const char *buffer, int len)
{
 int i;

 w_ctr(base, 0x4);
 for (i = len >> 1; i; i--) {
  w_dtr(base, *buffer++);
  w_ctr(base, 0x5);
  w_dtr(base, *buffer++);
  w_ctr(base, 0x0);
 }
 w_ctr(base, 0x4);
 return 1;
}
