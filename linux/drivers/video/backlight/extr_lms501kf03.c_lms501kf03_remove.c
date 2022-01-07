
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct lms501kf03 {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int lms501kf03_power (struct lms501kf03*,int ) ;
 struct lms501kf03* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int lms501kf03_remove(struct spi_device *spi)
{
 struct lms501kf03 *lcd = spi_get_drvdata(spi);

 lms501kf03_power(lcd, FB_BLANK_POWERDOWN);
 return 0;
}
