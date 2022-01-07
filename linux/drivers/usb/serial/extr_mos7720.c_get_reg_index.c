
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mos_regs { ____Placeholder_mos_regs } mos_regs ;
typedef int __u16 ;



__attribute__((used)) static inline __u16 get_reg_index(enum mos_regs reg)
{
 static const __u16 mos7715_index_lookup_table[] = {
  0x00,
  0x00,
  0x01,
  0x02,
  0x02,
  0x03,
  0x04,
  0x05,
  0x06,
  0x07,
  0x00,
  0x01,
  0x00,
  0x01,
  0x02,
  0x0a,
  0x01,
  0x02,
  0x04,
  0x08,
 };
 return mos7715_index_lookup_table[reg];
}
