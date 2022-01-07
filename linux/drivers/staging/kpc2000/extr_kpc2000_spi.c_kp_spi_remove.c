
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;


 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int
kp_spi_remove(struct platform_device *pldev)
{
 struct spi_master *master = platform_get_drvdata(pldev);

 spi_unregister_master(master);
 return 0;
}
