
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfcmrvl_spi_drv_data {TYPE_1__* nci_spi; } ;
struct nfcmrvl_private {struct nfcmrvl_spi_drv_data* drv_data; } ;
struct nfcmrvl_fw_spi_config {int clk; } ;
struct TYPE_2__ {int xfer_speed_hz; } ;



__attribute__((used)) static void nfcmrvl_spi_nci_update_config(struct nfcmrvl_private *priv,
       const void *param)
{
 struct nfcmrvl_spi_drv_data *drv_data = priv->drv_data;
 const struct nfcmrvl_fw_spi_config *config = param;

 drv_data->nci_spi->xfer_speed_hz = config->clk;
}
