
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9685 {int regmap; } ;


 int MODE1_SLEEP ;
 int PCA9685_MODE1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void pca9685_set_sleep_mode(struct pca9685 *pca, bool enable)
{
 regmap_update_bits(pca->regmap, PCA9685_MODE1,
      MODE1_SLEEP, enable ? MODE1_SLEEP : 0);
 if (!enable) {

  udelay(500);
 }
}
