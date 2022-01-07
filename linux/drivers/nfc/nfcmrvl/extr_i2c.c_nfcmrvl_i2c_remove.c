
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_i2c_drv_data {int priv; } ;
struct i2c_client {int dummy; } ;


 struct nfcmrvl_i2c_drv_data* i2c_get_clientdata (struct i2c_client*) ;
 int nfcmrvl_nci_unregister_dev (int ) ;

__attribute__((used)) static int nfcmrvl_i2c_remove(struct i2c_client *client)
{
 struct nfcmrvl_i2c_drv_data *drv_data = i2c_get_clientdata(client);

 nfcmrvl_nci_unregister_dev(drv_data->priv);

 return 0;
}
