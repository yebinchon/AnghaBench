
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_i2c_phy {int ndev; } ;
struct i2c_client {int dummy; } ;


 struct s3fwrn5_i2c_phy* i2c_get_clientdata (struct i2c_client*) ;
 int s3fwrn5_remove (int ) ;

__attribute__((used)) static int s3fwrn5_i2c_remove(struct i2c_client *client)
{
 struct s3fwrn5_i2c_phy *phy = i2c_get_clientdata(client);

 s3fwrn5_remove(phy->ndev);

 return 0;
}
