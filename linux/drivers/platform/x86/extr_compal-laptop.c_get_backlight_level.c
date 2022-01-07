
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKLIGHT_LEVEL_ADDR ;
 scalar_t__ ec_read_u8 (int ) ;

__attribute__((used)) static int get_backlight_level(void)
{
 return (int) ec_read_u8(BACKLIGHT_LEVEL_ADDR);
}
