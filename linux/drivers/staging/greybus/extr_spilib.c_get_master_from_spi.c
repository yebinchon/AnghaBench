
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct gb_spilib {int connection; } ;


 struct spi_master* gb_connection_get_data (int ) ;

__attribute__((used)) static struct spi_master *get_master_from_spi(struct gb_spilib *spi)
{
 return gb_connection_get_data(spi->connection);
}
