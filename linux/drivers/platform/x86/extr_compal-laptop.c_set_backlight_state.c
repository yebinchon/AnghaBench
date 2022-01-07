
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BACKLIGHT_STATE_ADDR ;
 int BACKLIGHT_STATE_OFF_DATA ;
 int BACKLIGHT_STATE_ON_DATA ;
 int ec_transaction (int ,int *,int,int *,int ) ;

__attribute__((used)) static void set_backlight_state(bool on)
{
 u8 data = on ? BACKLIGHT_STATE_ON_DATA : BACKLIGHT_STATE_OFF_DATA;
 ec_transaction(BACKLIGHT_STATE_ADDR, &data, 1, ((void*)0), 0);
}
