
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FIELD_GET (int ,int ) ;
 int UFSHCI_AHIBERN8_SCALE_FACTOR ;
 int UFSHCI_AHIBERN8_SCALE_MASK ;
 int UFSHCI_AHIBERN8_TIMER_MASK ;

__attribute__((used)) static int ufshcd_ahit_to_us(u32 ahit)
{
 int timer = FIELD_GET(UFSHCI_AHIBERN8_TIMER_MASK, ahit);
 int scale = FIELD_GET(UFSHCI_AHIBERN8_SCALE_MASK, ahit);

 for (; scale > 0; --scale)
  timer *= UFSHCI_AHIBERN8_SCALE_FACTOR;

 return timer;
}
