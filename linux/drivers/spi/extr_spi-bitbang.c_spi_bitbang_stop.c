
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_bitbang {int master; } ;


 int spi_unregister_master (int ) ;

void spi_bitbang_stop(struct spi_bitbang *bitbang)
{
 spi_unregister_master(bitbang->master);
}
