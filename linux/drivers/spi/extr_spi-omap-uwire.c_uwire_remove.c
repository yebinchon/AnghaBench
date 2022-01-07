
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwire_spi {int bitbang; } ;
struct platform_device {int dummy; } ;


 struct uwire_spi* platform_get_drvdata (struct platform_device*) ;
 int spi_bitbang_stop (int *) ;
 int uwire_off (struct uwire_spi*) ;

__attribute__((used)) static int uwire_remove(struct platform_device *pdev)
{
 struct uwire_spi *uwire = platform_get_drvdata(pdev);



 spi_bitbang_stop(&uwire->bitbang);
 uwire_off(uwire);
 return 0;
}
