
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int ocp_stat; int card_exist; int card_fail; } ;


 int CARD_OE ;
 int MS_CARD ;
 int MS_OUTPUT_EN ;
 int SD_CARD ;
 int SD_OC_EVER ;
 int SD_OC_NOW ;
 int SD_OUTPUT_EN ;
 int XD_CARD ;
 int XD_OUTPUT_EN ;
 int card_power_off (struct rtsx_chip*,int) ;
 int dev_dbg (int ,char*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int ,int ) ;

__attribute__((used)) static void rtsx_manage_1lun_mode(struct rtsx_chip *chip)
{
}
