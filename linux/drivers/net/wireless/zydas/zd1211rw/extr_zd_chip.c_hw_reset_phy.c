
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int dummy; } ;


 int zd1211_hw_reset_phy (struct zd_chip*) ;
 int zd1211b_hw_reset_phy (struct zd_chip*) ;
 scalar_t__ zd_chip_is_zd1211b (struct zd_chip*) ;

__attribute__((used)) static int hw_reset_phy(struct zd_chip *chip)
{
 return zd_chip_is_zd1211b(chip) ? zd1211b_hw_reset_phy(chip) :
                    zd1211_hw_reset_phy(chip);
}
