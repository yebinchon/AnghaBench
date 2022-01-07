
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mic_data {int dummy; } ;


 int secmicappendbyte (struct mic_data*,int ) ;

void r8712_secmicappend(struct mic_data *pmicdata, u8 *src, u32 nbytes)
{

 while (nbytes > 0) {
  secmicappendbyte(pmicdata, *src++);
  nbytes--;
 }
}
