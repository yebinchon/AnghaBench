
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static inline int bq24735_read_word(struct i2c_client *client, u8 reg)
{
 return i2c_smbus_read_word_data(client, reg);
}
