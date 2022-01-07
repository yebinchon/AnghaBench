
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT5 ;
 int SR01 ;
 int VIASR ;
 int viafb_write_reg_mask (int ,int ,int,int ) ;

__attribute__((used)) static void device_screen_on(void)
{

 viafb_write_reg_mask(SR01, VIASR, 0x00, BIT5);
}
