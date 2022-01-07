
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct bcm_qspi_parms {int dummy; } ;


 int kfree (struct bcm_qspi_parms*) ;
 struct bcm_qspi_parms* spi_get_ctldata (struct spi_device*) ;

__attribute__((used)) static void bcm_qspi_cleanup(struct spi_device *spi)
{
 struct bcm_qspi_parms *xp = spi_get_ctldata(spi);

 kfree(xp);
}
