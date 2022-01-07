
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int rtsx_reset_cards (struct rtsx_chip*) ;

__attribute__((used)) static inline void rtsx_reset_detected_cards(struct rtsx_chip *chip, int flag)
{
 rtsx_reset_cards(chip);
}
