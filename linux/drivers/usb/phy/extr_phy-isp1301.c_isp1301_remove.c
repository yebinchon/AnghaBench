
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1301 {int phy; } ;
struct i2c_client {int dummy; } ;


 struct isp1301* i2c_get_clientdata (struct i2c_client*) ;
 int * isp1301_i2c_client ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int isp1301_remove(struct i2c_client *client)
{
 struct isp1301 *isp = i2c_get_clientdata(client);

 usb_remove_phy(&isp->phy);
 isp1301_i2c_client = ((void*)0);

 return 0;
}
