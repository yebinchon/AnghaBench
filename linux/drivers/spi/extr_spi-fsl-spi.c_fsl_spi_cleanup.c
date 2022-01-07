
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mpc8xxx_cs {int dummy; } ;
struct spi_device {int dummy; } ;


 int kfree (struct spi_mpc8xxx_cs*) ;
 struct spi_mpc8xxx_cs* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,int *) ;

__attribute__((used)) static void fsl_spi_cleanup(struct spi_device *spi)
{
 struct spi_mpc8xxx_cs *cs = spi_get_ctldata(spi);

 kfree(cs);
 spi_set_ctldata(spi, ((void*)0));
}
