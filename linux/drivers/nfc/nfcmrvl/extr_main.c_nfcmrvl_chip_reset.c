
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_n_io; } ;
struct nfcmrvl_private {int dev; TYPE_1__ config; int flags; } ;


 int NFCMRVL_PHY_ERROR ;
 int clear_bit (int ,int *) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int nfc_info (int ,char*) ;
 int usleep_range (int,int) ;

void nfcmrvl_chip_reset(struct nfcmrvl_private *priv)
{

 clear_bit(NFCMRVL_PHY_ERROR, &priv->flags);

 if (gpio_is_valid(priv->config.reset_n_io)) {
  nfc_info(priv->dev, "reset the chip\n");
  gpio_set_value(priv->config.reset_n_io, 0);
  usleep_range(5000, 10000);
  gpio_set_value(priv->config.reset_n_io, 1);
 } else
  nfc_info(priv->dev, "no reset available on this interface\n");
}
