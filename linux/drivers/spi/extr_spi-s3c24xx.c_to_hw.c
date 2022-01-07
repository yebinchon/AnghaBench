
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int master; } ;
struct s3c24xx_spi {int dummy; } ;


 struct s3c24xx_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline struct s3c24xx_spi *to_hw(struct spi_device *sdev)
{
 return spi_master_get_devdata(sdev->master);
}
