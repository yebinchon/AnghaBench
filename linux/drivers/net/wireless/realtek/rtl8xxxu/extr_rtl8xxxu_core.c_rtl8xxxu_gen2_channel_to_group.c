
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int rtl8xxxu_gen2_channel_to_group(int channel)
{
 int group;

 if (channel < 3)
  group = 0;
 else if (channel < 6)
  group = 1;
 else if (channel < 9)
  group = 2;
 else if (channel < 12)
  group = 3;
 else
  group = 4;

 return group;
}
