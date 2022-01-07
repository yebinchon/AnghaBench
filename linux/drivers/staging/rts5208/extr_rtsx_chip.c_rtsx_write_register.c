
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int BIT (int) ;
 int MAX_RW_REG_CNT ;
 int RTSX_HAIMR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int STATUS_TIMEDOUT ;
 int rtsx_readl (struct rtsx_chip*,int ) ;
 int rtsx_writel (struct rtsx_chip*,int ,int) ;

int rtsx_write_register(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
{
 int i;
 u32 val = 3 << 30;

 val |= (u32)(addr & 0x3FFF) << 16;
 val |= (u32)mask << 8;
 val |= (u32)data;

 rtsx_writel(chip, RTSX_HAIMR, val);

 for (i = 0; i < MAX_RW_REG_CNT; i++) {
  val = rtsx_readl(chip, RTSX_HAIMR);
  if ((val & BIT(31)) == 0) {
   if (data != (u8)val)
    return STATUS_FAIL;

   return STATUS_SUCCESS;
  }
 }

 return STATUS_TIMEDOUT;
}
