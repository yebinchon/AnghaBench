
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_put (void*) ;

__attribute__((used)) static void devm_backlight_release(void *data)
{
 backlight_put(data);
}
