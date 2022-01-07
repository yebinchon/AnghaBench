
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bitmap_free (void*) ;

__attribute__((used)) static void power_supply_hwmon_bitmap_free(void *data)
{
 bitmap_free(data);
}
