
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static inline u16 wlan_ctl_framelen(u16 fstype)
{
 switch (fstype) {
 case 133:
  return 24;
 case 134:
  return 152;
 case 129:
 case 128:
 case 132:
 case 131:
  return 20;
 case 130:
 case 135:
  return 14;
 default:
  return 4;
 }
}
