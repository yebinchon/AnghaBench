
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c64xx_spi_info {int dummy; } ;
struct device {int dummy; } ;


 struct s3c64xx_spi_info* dev_get_platdata (struct device*) ;

__attribute__((used)) static struct s3c64xx_spi_info *s3c64xx_spi_parse_dt(struct device *dev)
{
 return dev_get_platdata(dev);
}
