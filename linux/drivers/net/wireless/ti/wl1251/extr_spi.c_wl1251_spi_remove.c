
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int vio; } ;
struct spi_device {int dummy; } ;


 int regulator_disable (int ) ;
 struct wl1251* spi_get_drvdata (struct spi_device*) ;
 int wl1251_free_hw (struct wl1251*) ;

__attribute__((used)) static int wl1251_spi_remove(struct spi_device *spi)
{
 struct wl1251 *wl = spi_get_drvdata(spi);

 wl1251_free_hw(wl);
 regulator_disable(wl->vio);

 return 0;
}
