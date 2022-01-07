
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_slave_time_priv {int finished; } ;
struct spi_device {int dummy; } ;


 struct spi_slave_time_priv* spi_get_drvdata (struct spi_device*) ;
 int spi_slave_abort (struct spi_device*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int spi_slave_time_remove(struct spi_device *spi)
{
 struct spi_slave_time_priv *priv = spi_get_drvdata(spi);

 spi_slave_abort(spi);
 wait_for_completion(&priv->finished);
 return 0;
}
