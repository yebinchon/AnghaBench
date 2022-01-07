
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;


 int wl1251_spi_reset (struct wl1251*) ;
 int wl1251_spi_wake (struct wl1251*) ;

__attribute__((used)) static void wl1251_spi_reset_wake(struct wl1251 *wl)
{
 wl1251_spi_reset(wl);
 wl1251_spi_wake(wl);
}
