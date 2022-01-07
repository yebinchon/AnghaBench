
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FIELD_PREP (unsigned int,unsigned int) ;
 unsigned int UFSHCI_AHIBERN8_SCALE_FACTOR ;
 unsigned int UFSHCI_AHIBERN8_SCALE_MASK ;
 unsigned int UFSHCI_AHIBERN8_TIMER_MASK ;

__attribute__((used)) static u32 ufshcd_us_to_ahit(unsigned int timer)
{
 unsigned int scale;

 for (scale = 0; timer > UFSHCI_AHIBERN8_TIMER_MASK; ++scale)
  timer /= UFSHCI_AHIBERN8_SCALE_FACTOR;

 return FIELD_PREP(UFSHCI_AHIBERN8_TIMER_MASK, timer) |
        FIELD_PREP(UFSHCI_AHIBERN8_SCALE_MASK, scale);
}
