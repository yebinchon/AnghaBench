
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {int dummy; } ;
typedef scalar_t__ s32 ;



__attribute__((used)) static s32 translate2dbm(struct _adapter *padapter, u8 signal_strength_idx)
{
 s32 signal_power;

 signal_power = (s32)((signal_strength_idx + 1) >> 1);
 signal_power -= 95;
 return signal_power;
}
