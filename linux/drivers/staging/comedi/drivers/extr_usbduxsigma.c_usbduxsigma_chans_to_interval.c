
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int usbduxsigma_chans_to_interval(int num_chan)
{
 if (num_chan <= 2)
  return 2;
 if (num_chan <= 8)
  return 4;
 return 8;
}
