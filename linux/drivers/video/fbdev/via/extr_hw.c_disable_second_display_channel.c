
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT6 ;
 int BIT7 ;
 int CR6A ;
 int VIACR ;
 int viafb_write_reg_mask (int ,int ,int,int) ;

__attribute__((used)) static void disable_second_display_channel(void)
{

 viafb_write_reg_mask(CR6A, VIACR, 0x00, BIT6);
 viafb_write_reg_mask(CR6A, VIACR, 0x00, BIT7);
 viafb_write_reg_mask(CR6A, VIACR, BIT6, BIT6);
}
