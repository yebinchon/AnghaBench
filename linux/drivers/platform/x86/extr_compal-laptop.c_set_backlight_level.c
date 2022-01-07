
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKLIGHT_LEVEL_ADDR ;
 int BACKLIGHT_LEVEL_MAX ;
 int EINVAL ;
 int ec_write (int ,int) ;

__attribute__((used)) static int set_backlight_level(int level)
{
 if (level < 0 || level > BACKLIGHT_LEVEL_MAX)
  return -EINVAL;

 ec_write(BACKLIGHT_LEVEL_ADDR, level);

 return 0;
}
