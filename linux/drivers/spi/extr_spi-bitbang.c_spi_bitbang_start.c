
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_bitbang {struct spi_master* master; } ;


 int spi_bitbang_init (struct spi_bitbang*) ;
 int spi_master_get (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_register_master (int ) ;

int spi_bitbang_start(struct spi_bitbang *bitbang)
{
 struct spi_master *master = bitbang->master;
 int ret;

 ret = spi_bitbang_init(bitbang);
 if (ret)
  return ret;




 ret = spi_register_master(spi_master_get(master));
 if (ret)
  spi_master_put(master);

 return ret;
}
