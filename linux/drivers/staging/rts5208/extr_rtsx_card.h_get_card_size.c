
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sd_info {int sd_lock_status; } ;
struct rtsx_chip {int * capacity; struct sd_info sd_card; } ;


 scalar_t__ SD_CARD ;
 int SD_LOCKED ;
 scalar_t__ get_lun_card (struct rtsx_chip*,unsigned int) ;

__attribute__((used)) static inline u32 get_card_size(struct rtsx_chip *chip, unsigned int lun)
{
 return chip->capacity[lun];

}
