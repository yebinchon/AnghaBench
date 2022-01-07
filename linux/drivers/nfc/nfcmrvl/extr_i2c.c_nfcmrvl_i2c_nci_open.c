
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_private {struct nfcmrvl_i2c_drv_data* drv_data; } ;
struct nfcmrvl_i2c_drv_data {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int nfcmrvl_i2c_nci_open(struct nfcmrvl_private *priv)
{
 struct nfcmrvl_i2c_drv_data *drv_data = priv->drv_data;

 if (!drv_data)
  return -ENODEV;

 return 0;
}
