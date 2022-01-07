
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;


 int ETIMEDOUT ;
 scalar_t__ SNVS_LPCR ;
 int SNVS_LPCR_SRTC_ENV ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int snvs_rtc_enable(struct snvs_rtc_data *data, bool enable)
{
 int timeout = 1000;
 u32 lpcr;

 regmap_update_bits(data->regmap, data->offset + SNVS_LPCR, SNVS_LPCR_SRTC_ENV,
      enable ? SNVS_LPCR_SRTC_ENV : 0);

 while (--timeout) {
  regmap_read(data->regmap, data->offset + SNVS_LPCR, &lpcr);

  if (enable) {
   if (lpcr & SNVS_LPCR_SRTC_ENV)
    break;
  } else {
   if (!(lpcr & SNVS_LPCR_SRTC_ENV))
    break;
  }
 }

 if (!timeout)
  return -ETIMEDOUT;

 return 0;
}
