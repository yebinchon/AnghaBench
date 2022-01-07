
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct spi_transfer {int dummy; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ds1305 {struct spi_device* spi; } ;


 unsigned int DS1305_NVRAM ;
 unsigned int DS1305_WRITE ;
 int msg_init (struct spi_message*,struct spi_transfer*,unsigned int*,size_t,void*,int *) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int ds1305_nvram_write(void *priv, unsigned int off, void *buf,
         size_t count)
{
 struct ds1305 *ds1305 = priv;
 struct spi_device *spi = ds1305->spi;
 u8 addr;
 struct spi_message m;
 struct spi_transfer x[2];

 addr = (DS1305_WRITE | DS1305_NVRAM) + off;
 msg_init(&m, x, &addr, count, buf, ((void*)0));

 return spi_sync(spi, &m);
}
