
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ulpiview; } ;


 int fsl_writel (int,int *) ;
 TYPE_1__* usb_dr_regs ;

int write_ulpi(u8 addr, u8 data)
{
 u32 temp;

 temp = 0x60000000 | (addr << 16) | data;
 fsl_writel(temp, &usb_dr_regs->ulpiview);
 return 0;
}
