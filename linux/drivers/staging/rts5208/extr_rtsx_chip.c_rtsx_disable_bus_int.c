
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int RTSX_BIER ;
 int rtsx_writel (struct rtsx_chip*,int ,int ) ;

void rtsx_disable_bus_int(struct rtsx_chip *chip)
{
 rtsx_writel(chip, RTSX_BIER, 0);
}
