
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int card_wp; int* lun2card; } ;



int check_card_wp(struct rtsx_chip *chip, unsigned int lun)
{
 if (chip->card_wp & chip->lun2card[lun])
  return 1;

 return 0;
}
