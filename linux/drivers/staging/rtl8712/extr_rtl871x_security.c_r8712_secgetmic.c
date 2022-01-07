
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mic_data {scalar_t__ nBytesInM; int R; int L; } ;


 int secmicappendbyte (struct mic_data*,int) ;
 int secmicclear (struct mic_data*) ;
 int secmicputuint32 (int *,int ) ;

void r8712_secgetmic(struct mic_data *pmicdata, u8 *dst)
{

 secmicappendbyte(pmicdata, 0x5a);
 secmicappendbyte(pmicdata, 0);
 secmicappendbyte(pmicdata, 0);
 secmicappendbyte(pmicdata, 0);
 secmicappendbyte(pmicdata, 0);

 while (pmicdata->nBytesInM != 0)
  secmicappendbyte(pmicdata, 0);

 secmicputuint32(dst, pmicdata->L);
 secmicputuint32(dst + 4, pmicdata->R);

 secmicclear(pmicdata);
}
