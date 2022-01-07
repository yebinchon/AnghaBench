
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct spi_transfer {int dummy; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ds1305 {struct spi_device* spi; } ;


 scalar_t__ DS1305_NVRAM ;
 int msg_init (struct spi_message*,struct spi_transfer*,scalar_t__*,size_t,int *,void*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int ds1305_nvram_read(void *priv, unsigned int off, void *buf,
        size_t count)
{
 struct ds1305 *ds1305 = priv;
 struct spi_device *spi = ds1305->spi;
 u8 addr;
 struct spi_message m;
 struct spi_transfer x[2];

 addr = DS1305_NVRAM + off;
 msg_init(&m, x, &addr, count, ((void*)0), buf);

 return spi_sync(spi, &m);
}
