
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;


 unsigned int GI_660X_PRESCALE_X8 ;
 unsigned int GI_M_PRESCALE_X8 ;




__attribute__((used)) static inline unsigned int GI_PRESCALE_X8(enum ni_gpct_variant variant)
{
 switch (variant) {
 case 129:
 default:
  return 0;
 case 128:
  return GI_M_PRESCALE_X8;
 case 130:
  return GI_660X_PRESCALE_X8;
 }
}
