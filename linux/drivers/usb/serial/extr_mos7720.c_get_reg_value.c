
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mos_regs { ____Placeholder_mos_regs } mos_regs ;
typedef int __u16 ;


 int MOS7720_DPR ;
 int MOS7720_SP1_REG ;

__attribute__((used)) static inline __u16 get_reg_value(enum mos_regs reg,
      unsigned int serial_portnum)
{
 if (reg >= MOS7720_SP1_REG)
  return 0x0000;

 else if (reg >= MOS7720_DPR)
  return 0x0100;

 else
  return (serial_portnum + 2) << 8;
}
