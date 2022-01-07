
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_spi_glue {int core; } ;
struct spi_device {int dummy; } ;


 int platform_device_unregister (int ) ;
 struct wl12xx_spi_glue* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int wl1271_remove(struct spi_device *spi)
{
 struct wl12xx_spi_glue *glue = spi_get_drvdata(spi);

 platform_device_unregister(glue->core);

 return 0;
}
