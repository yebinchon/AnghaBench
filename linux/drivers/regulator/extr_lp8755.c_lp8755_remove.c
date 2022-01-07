
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8755_chip {int dummy; } ;
struct i2c_client {int dummy; } ;


 int LP8755_BUCK_MAX ;
 struct lp8755_chip* i2c_get_clientdata (struct i2c_client*) ;
 int lp8755_write (struct lp8755_chip*,int,int) ;

__attribute__((used)) static int lp8755_remove(struct i2c_client *client)
{
 int icnt;
 struct lp8755_chip *pchip = i2c_get_clientdata(client);

 for (icnt = 0; icnt < LP8755_BUCK_MAX; icnt++)
  lp8755_write(pchip, icnt, 0x00);

 return 0;
}
