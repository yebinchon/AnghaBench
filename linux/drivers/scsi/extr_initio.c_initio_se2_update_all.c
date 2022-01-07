
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ i91udftNvRam ;
 int i91unvram ;
 int * i91unvramp ;
 int initio_se2_ew_ds (unsigned long) ;
 int initio_se2_ew_en (unsigned long) ;
 int initio_se2_wr (unsigned long,int,scalar_t__) ;

__attribute__((used)) static void initio_se2_update_all(unsigned long base)
{
 int i;
 u16 chksum = 0;
 u16 *np, *np1;

 i91unvramp = &i91unvram;

 np = (u16 *) i91udftNvRam;
 for (i = 0; i < 31; i++)
  chksum += *np++;
 *np = chksum;
 initio_se2_ew_en(base);

 np = (u16 *) i91udftNvRam;
 np1 = (u16 *) i91unvramp;
 for (i = 0; i < 32; i++, np++, np1++) {
  if (*np != *np1)
   initio_se2_wr(base, i, *np);
 }
 initio_se2_ew_ds(base);
}
