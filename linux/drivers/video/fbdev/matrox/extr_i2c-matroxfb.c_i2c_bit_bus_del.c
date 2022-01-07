
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_bit_adapter {scalar_t__ initialized; int adapter; } ;


 int i2c_del_adapter (int *) ;

__attribute__((used)) static void i2c_bit_bus_del(struct i2c_bit_adapter* b) {
 if (b->initialized) {
  i2c_del_adapter(&b->adapter);
  b->initialized = 0;
 }
}
