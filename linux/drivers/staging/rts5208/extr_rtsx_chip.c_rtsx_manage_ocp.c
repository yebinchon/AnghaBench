
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int card_exist; scalar_t__ ocp_int; int ocp_stat; } ;


 int MS_CARD ;
 int OCPSTAT ;
 int SD_CARD ;
 int XD_CARD ;
 int ms_power_off_card3v3 (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int *) ;
 int sd_power_off_card3v3 (struct rtsx_chip*) ;
 int xd_power_off_card3v3 (struct rtsx_chip*) ;

__attribute__((used)) static void rtsx_manage_ocp(struct rtsx_chip *chip)
{
}
