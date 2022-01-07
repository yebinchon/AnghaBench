
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint ;
typedef int u8 ;
struct adapter {int dummy; } ;



int rtw_restruct_wmm_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len, uint initial_out_len)
{
 unsigned int ielength = 0;
 unsigned int i, j;


 for (i = 12; i < in_len; i += (in_ie[i + 1] + 2) ) {
  ielength = initial_out_len;

  if (in_ie[i] == 0xDD && in_ie[i+2] == 0x00 && in_ie[i+3] == 0x50 && in_ie[i+4] == 0xF2 && in_ie[i+5] == 0x02 && i+5 < in_len) {



   for (j = i; j < i + 9; j++) {
    out_ie[ielength] = in_ie[j];
    ielength++;
   }
   out_ie[initial_out_len + 1] = 0x07;
   out_ie[initial_out_len + 6] = 0x00;
   out_ie[initial_out_len + 8] = 0x00;
   break;
  }
 }
 return ielength;
}
