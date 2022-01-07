
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bluetooth_power; } ;


 int sony_pic_call1 (int) ;
 int sony_pic_call2 (int,int) ;
 TYPE_1__ spic_dev ;

__attribute__((used)) static void __sony_pic_set_bluetoothpower(u8 state)
{
 state = !!state;
 if (spic_dev.bluetooth_power == state)
  return;
 sony_pic_call2(0x96, state);
 sony_pic_call1(0x82);
 spic_dev.bluetooth_power = state;
}
