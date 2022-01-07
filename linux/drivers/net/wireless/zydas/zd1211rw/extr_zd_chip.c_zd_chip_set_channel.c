
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int mutex; int rf; } ;


 int CR_CONFIG_PHILIPS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int patch_6m_band_edge (struct zd_chip*,int ) ;
 int patch_cck_gain (struct zd_chip*) ;
 int update_channel_integration_and_calibration (struct zd_chip*,int ) ;
 int zd_chip_lock_phy_regs (struct zd_chip*) ;
 int zd_chip_unlock_phy_regs (struct zd_chip*) ;
 int zd_iowrite32_locked (struct zd_chip*,int ,int ) ;
 int zd_rf_set_channel (int *,int ) ;

int zd_chip_set_channel(struct zd_chip *chip, u8 channel)
{
 int r, t;

 mutex_lock(&chip->mutex);
 r = zd_chip_lock_phy_regs(chip);
 if (r)
  goto out;
 r = zd_rf_set_channel(&chip->rf, channel);
 if (r)
  goto unlock;
 r = update_channel_integration_and_calibration(chip, channel);
 if (r)
  goto unlock;
 r = patch_cck_gain(chip);
 if (r)
  goto unlock;
 r = patch_6m_band_edge(chip, channel);
 if (r)
  goto unlock;
 r = zd_iowrite32_locked(chip, 0, CR_CONFIG_PHILIPS);
unlock:
 t = zd_chip_unlock_phy_regs(chip);
 if (t && !r)
  r = t;
out:
 mutex_unlock(&chip->mutex);
 return r;
}
