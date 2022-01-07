
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct spi_bitbang {int busy; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct spi_bitbang* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_bitbang_prepare_hardware(struct spi_master *spi)
{
 struct spi_bitbang *bitbang;

 bitbang = spi_master_get_devdata(spi);

 mutex_lock(&bitbang->lock);
 bitbang->busy = 1;
 mutex_unlock(&bitbang->lock);

 return 0;
}
