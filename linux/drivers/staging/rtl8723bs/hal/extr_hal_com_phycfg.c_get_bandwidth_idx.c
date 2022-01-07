
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;







__attribute__((used)) static s16 get_bandwidth_idx(const enum CHANNEL_WIDTH bandwidth)
{
 switch (bandwidth) {
 case 130:
  return 0;
 case 129:
  return 1;
 case 128:
  return 2;
 case 131:
  return 3;
 default:
  return -1;
 }
}
