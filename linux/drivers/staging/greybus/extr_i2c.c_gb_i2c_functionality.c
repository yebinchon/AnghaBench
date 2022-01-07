
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;
struct gb_i2c_device {int functionality; } ;


 struct gb_i2c_device* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static u32 gb_i2c_functionality(struct i2c_adapter *adap)
{
 struct gb_i2c_device *gb_i2c_dev = i2c_get_adapdata(adap);

 return gb_i2c_dev->functionality;
}
