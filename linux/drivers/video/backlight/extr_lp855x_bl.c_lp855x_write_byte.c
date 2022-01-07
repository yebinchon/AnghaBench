
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp855x {int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int lp855x_write_byte(struct lp855x *lp, u8 reg, u8 data)
{
 return i2c_smbus_write_byte_data(lp->client, reg, data);
}
