
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftdi_private {int custom_divisor; int force_baud; int flags; } ;


 int ASYNC_SPD_CUST ;

__attribute__((used)) static void ftdi_USB_UIRT_setup(struct ftdi_private *priv)
{
 priv->flags |= ASYNC_SPD_CUST;
 priv->custom_divisor = 77;
 priv->force_baud = 38400;
}
