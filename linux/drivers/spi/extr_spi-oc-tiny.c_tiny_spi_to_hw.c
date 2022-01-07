
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiny_spi {int dummy; } ;
struct spi_device {int master; } ;


 struct tiny_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static inline struct tiny_spi *tiny_spi_to_hw(struct spi_device *sdev)
{
 return spi_master_get_devdata(sdev->master);
}
