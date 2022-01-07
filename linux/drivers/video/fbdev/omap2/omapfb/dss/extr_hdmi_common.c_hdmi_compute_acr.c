
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

int hdmi_compute_acr(u32 pclk, u32 sample_freq, u32 *n, u32 *cts)
{
 u32 deep_color;
 bool deep_color_correct = 0;

 if (n == ((void*)0) || cts == ((void*)0))
  return -EINVAL;


 deep_color = 100;







 switch (sample_freq) {
 case 32000:
 case 48000:
 case 96000:
 case 192000:
  if (deep_color == 125)
   if (pclk == 27027000 || pclk == 74250000)
    deep_color_correct = 1;
  if (deep_color == 150)
   if (pclk == 27027000)
    deep_color_correct = 1;
  break;
 case 44100:
 case 88200:
 case 176400:
  if (deep_color == 125)
   if (pclk == 27027000)
    deep_color_correct = 1;
  break;
 default:
  return -EINVAL;
 }

 if (deep_color_correct) {
  switch (sample_freq) {
  case 32000:
   *n = 8192;
   break;
  case 44100:
   *n = 12544;
   break;
  case 48000:
   *n = 8192;
   break;
  case 88200:
   *n = 25088;
   break;
  case 96000:
   *n = 16384;
   break;
  case 176400:
   *n = 50176;
   break;
  case 192000:
   *n = 32768;
   break;
  default:
   return -EINVAL;
  }
 } else {
  switch (sample_freq) {
  case 32000:
   *n = 4096;
   break;
  case 44100:
   *n = 6272;
   break;
  case 48000:
   *n = 6144;
   break;
  case 88200:
   *n = 12544;
   break;
  case 96000:
   *n = 12288;
   break;
  case 176400:
   *n = 25088;
   break;
  case 192000:
   *n = 24576;
   break;
  default:
   return -EINVAL;
  }
 }

 *cts = (pclk/1000) * (*n / 128) * deep_color / (sample_freq / 10);

 return 0;
}
