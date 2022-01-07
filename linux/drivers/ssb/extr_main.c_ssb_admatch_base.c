
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSB_ADM_BASE0 ;
 int SSB_ADM_BASE1 ;
 int SSB_ADM_BASE2 ;
 int SSB_ADM_NEG ;
 int SSB_ADM_TYPE ;



 int WARN_ON (int) ;

u32 ssb_admatch_base(u32 adm)
{
 u32 base = 0;

 switch (adm & SSB_ADM_TYPE) {
 case 130:
  base = (adm & SSB_ADM_BASE0);
  break;
 case 129:
  WARN_ON(adm & SSB_ADM_NEG);
  base = (adm & SSB_ADM_BASE1);
  break;
 case 128:
  WARN_ON(adm & SSB_ADM_NEG);
  base = (adm & SSB_ADM_BASE2);
  break;
 default:
  WARN_ON(1);
 }

 return base;
}
