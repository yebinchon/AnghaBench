
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mic_data {unsigned long M; int nBytesInM; int L; int R; } ;


 int ROL32 (int,int) ;
 int ROR32 (int,int) ;

void rtw_secmicappendbyte(struct mic_data *pmicdata, u8 b)
{

 pmicdata->M |= ((unsigned long)b) << (8*pmicdata->nBytesInM);
 pmicdata->nBytesInM++;

 if (pmicdata->nBytesInM >= 4) {
  pmicdata->L ^= pmicdata->M;
  pmicdata->R ^= ROL32(pmicdata->L, 17);
  pmicdata->L += pmicdata->R;
  pmicdata->R ^= ((pmicdata->L & 0xff00ff00) >> 8) | ((pmicdata->L & 0x00ff00ff) << 8);
  pmicdata->L += pmicdata->R;
  pmicdata->R ^= ROL32(pmicdata->L, 3);
  pmicdata->L += pmicdata->R;
  pmicdata->R ^= ROR32(pmicdata->L, 2);
  pmicdata->L += pmicdata->R;

  pmicdata->M = 0;
  pmicdata->nBytesInM = 0;
 }
}
