
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct via_i2c_stuff {struct i2c_adapter adapter; } ;
typedef enum viafb_i2c_adap { ____Placeholder_viafb_i2c_adap } viafb_i2c_adap ;


 struct via_i2c_stuff* via_i2c_par ;

struct i2c_adapter *viafb_find_i2c_adapter(enum viafb_i2c_adap which)
{
 struct via_i2c_stuff *stuff = &via_i2c_par[which];

 return &stuff->adapter;
}
