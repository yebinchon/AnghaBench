
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset_n_io; } ;
struct nfcmrvl_private {TYPE_1__ config; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;

void nfcmrvl_chip_halt(struct nfcmrvl_private *priv)
{
 if (gpio_is_valid(priv->config.reset_n_io))
  gpio_set_value(priv->config.reset_n_io, 0);
}
