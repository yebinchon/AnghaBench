
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int ADT ;
 int const ADT1_BD_SHIFT ;
 int const ADT1_CTRL_ASYNC_BD_MASK ;
 int const ADT1_PS_BIT ;
 int const ADT1_RDY_BIT ;
 int const bit_mask (int const) ;
 int dim2_write_ctr_mask (int,int*,int*) ;

__attribute__((used)) static void dim2_start_ctrl_async(u8 ch_addr, u8 idx, u32 buf_addr,
      u16 buffer_size)
{
 u8 const shift = idx * 16;

 u32 mask[4] = { 0, 0, 0, 0 };
 u32 adt[4] = { 0, 0, 0, 0 };

 mask[1] =
  bit_mask(ADT1_PS_BIT + shift) |
  bit_mask(ADT1_RDY_BIT + shift) |
  (ADT1_CTRL_ASYNC_BD_MASK << (ADT1_BD_SHIFT + shift));
 adt[1] =
  (1 << (ADT1_PS_BIT + shift)) |
  (1 << (ADT1_RDY_BIT + shift)) |
  ((buffer_size - 1) << (ADT1_BD_SHIFT + shift));

 mask[idx + 2] = 0xFFFFFFFF;
 adt[idx + 2] = buf_addr;

 dim2_write_ctr_mask(ADT + ch_addr, mask, adt);
}
