
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbsm_data {int muxc; } ;
struct i2c_client {int dummy; } ;


 struct sbsm_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;

__attribute__((used)) static int sbsm_remove(struct i2c_client *client)
{
 struct sbsm_data *data = i2c_get_clientdata(client);

 i2c_mux_del_adapters(data->muxc);
 return 0;
}
