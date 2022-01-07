
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int rf; int patch_6m_band_edge; int mutex; } ;


 int ZD_ASSERT (int ) ;
 int mutex_is_locked (int *) ;
 int zd_rf_patch_6m_band_edge (int *,int ) ;

__attribute__((used)) static int patch_6m_band_edge(struct zd_chip *chip, u8 channel)
{
 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 if (!chip->patch_6m_band_edge)
  return 0;

 return zd_rf_patch_6m_band_edge(&chip->rf, channel);
}
