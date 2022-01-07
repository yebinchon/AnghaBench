
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VIASR ;
 int via_write_reg (int ,int,int) ;
 int via_write_reg_mask (int ,int,int,int) ;

__attribute__((used)) static inline void set_engine_pll_encoded(u32 data)
{
 via_write_reg_mask(VIASR, 0x40, 0x01, 0x01);
 via_write_reg(VIASR, 0x47, data & 0xFF);
 via_write_reg(VIASR, 0x48, (data >> 8) & 0xFF);
 via_write_reg(VIASR, 0x49, (data >> 16) & 0xFF);
 via_write_reg_mask(VIASR, 0x40, 0x00, 0x01);
}
