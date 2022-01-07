
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct nfcmrvl_spi_drv_data {int priv; } ;


 int nfcmrvl_nci_unregister_dev (int ) ;
 struct nfcmrvl_spi_drv_data* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int nfcmrvl_spi_remove(struct spi_device *spi)
{
 struct nfcmrvl_spi_drv_data *drv_data = spi_get_drvdata(spi);

 nfcmrvl_nci_unregister_dev(drv_data->priv);
 return 0;
}
