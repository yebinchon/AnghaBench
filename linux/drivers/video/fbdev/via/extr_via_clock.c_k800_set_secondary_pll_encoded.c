
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VIASR ;
 int via_write_reg (int ,int,int) ;
 int via_write_reg_mask (int ,int,int,int) ;

__attribute__((used)) static inline void k800_set_secondary_pll_encoded(u32 data)
{
 via_write_reg_mask(VIASR, 0x40, 0x04, 0x04);
 via_write_reg(VIASR, 0x4A, data & 0xFF);
 via_write_reg(VIASR, 0x4B, (data >> 8) & 0xFF);
 via_write_reg(VIASR, 0x4C, (data >> 16) & 0xFF);
 via_write_reg_mask(VIASR, 0x40, 0x00, 0x04);
}
