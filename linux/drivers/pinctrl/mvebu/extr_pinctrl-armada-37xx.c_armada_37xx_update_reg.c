
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int GPIO_PER_REG ;

__attribute__((used)) static inline void armada_37xx_update_reg(unsigned int *reg,
       unsigned int *offset)
{

 if (*offset >= GPIO_PER_REG) {
  *offset -= GPIO_PER_REG;
  *reg += sizeof(u32);
 }
}
