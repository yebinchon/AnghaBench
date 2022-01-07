
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {scalar_t__ card_ready; scalar_t__ card_exist; } ;


 int ms_free_l2p_tbl (struct rtsx_chip*) ;
 int xd_free_l2p_tbl (struct rtsx_chip*) ;

void rtsx_release_chip(struct rtsx_chip *chip)
{
 xd_free_l2p_tbl(chip);
 ms_free_l2p_tbl(chip);
 chip->card_exist = 0;
 chip->card_ready = 0;
}
