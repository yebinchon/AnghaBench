
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd_info {int sd_lock_notify; void* sd_erase_status; } ;
struct rtsx_chip {int card_exist; int need_reinit; struct sd_info sd_card; } ;


 int SD_CARD ;
 void* SD_NOT_ERASE ;
 int rtsx_read_register (struct rtsx_chip*,int,int*) ;

__attribute__((used)) static void rtsx_manage_sd_lock(struct rtsx_chip *chip)
{
}
