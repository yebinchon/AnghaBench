
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_info {scalar_t__ err_code; } ;
struct rtsx_chip {struct sd_info sd_card; } ;



__attribute__((used)) static inline void sd_clr_err_code(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;

 sd_card->err_code = 0;
}
