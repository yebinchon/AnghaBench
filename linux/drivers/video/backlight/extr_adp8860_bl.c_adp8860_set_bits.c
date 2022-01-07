
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dummy; } ;
struct adp8860_bl {int lock; } ;


 int adp8860_read (struct i2c_client*,int,int*) ;
 int adp8860_write (struct i2c_client*,int,int) ;
 struct adp8860_bl* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adp8860_set_bits(struct i2c_client *client, int reg, uint8_t bit_mask)
{
 struct adp8860_bl *data = i2c_get_clientdata(client);
 uint8_t reg_val;
 int ret;

 mutex_lock(&data->lock);

 ret = adp8860_read(client, reg, &reg_val);

 if (!ret && ((reg_val & bit_mask) != bit_mask)) {
  reg_val |= bit_mask;
  ret = adp8860_write(client, reg, reg_val);
 }

 mutex_unlock(&data->lock);
 return ret;
}
