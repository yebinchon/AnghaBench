
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef enum vrc4171_slotb { ____Placeholder_vrc4171_slotb } vrc4171_slotb ;


 int CONFIGURATION1 ;
 int SLOTB_CF ;
 int SLOTB_CONFIG ;
 int SLOTB_FLASHROM ;




 int SLOTB_NONE ;
 int SLOTB_PCCARD ;
 int inw (int ) ;
 int outw (int ,int ) ;

__attribute__((used)) static inline void vrc4171_set_multifunction_pin(enum vrc4171_slotb config)
{
 uint16_t config1;

 config1 = inw(CONFIGURATION1);
 config1 &= ~SLOTB_CONFIG;

 switch (config) {
 case 129:
  config1 |= SLOTB_NONE;
  break;
 case 128:
  config1 |= SLOTB_PCCARD;
  break;
 case 131:
  config1 |= SLOTB_CF;
  break;
 case 130:
  config1 |= SLOTB_FLASHROM;
  break;
 default:
  break;
 }

 outw(config1, CONFIGURATION1);
}
