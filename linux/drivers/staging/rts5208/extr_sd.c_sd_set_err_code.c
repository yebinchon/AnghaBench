
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd_info {int err_code; } ;
struct rtsx_chip {struct sd_info sd_card; } ;



__attribute__((used)) static inline void sd_set_err_code(struct rtsx_chip *chip, u8 err_code)
{
 struct sd_info *sd_card = &chip->sd_card;

 sd_card->err_code |= err_code;
}
