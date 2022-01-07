
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MISC_CTRL ;




 unsigned int MISC_CTRL_LOCALMEM_SIZE_MASK ;
 int MODE0_GATE ;
 unsigned int MODE0_GATE_GPIO ;
 scalar_t__ SM750LE ;
 unsigned int SZ_16M ;
 unsigned int SZ_32M ;
 unsigned int SZ_64M ;
 unsigned int SZ_8M ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 scalar_t__ sm750_get_chip_type () ;

unsigned int ddk750_get_vm_size(void)
{
 unsigned int reg;
 unsigned int data;


 if (sm750_get_chip_type() == SM750LE)
  return SZ_64M;


 reg = peek32(MODE0_GATE);
 reg |= MODE0_GATE_GPIO;
 poke32(MODE0_GATE, reg);


 reg = peek32(MISC_CTRL) & MISC_CTRL_LOCALMEM_SIZE_MASK;
 switch (reg) {
 case 128:
  data = SZ_8M; break;
 case 131:
  data = SZ_16M; break;
 case 130:
  data = SZ_32M; break;
 case 129:
  data = SZ_64M; break;
 default:
  data = 0;
  break;
 }
 return data;
}
