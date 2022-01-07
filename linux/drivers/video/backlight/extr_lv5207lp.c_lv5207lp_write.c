
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lv5207lp {int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int lv5207lp_write(struct lv5207lp *lv, u8 reg, u8 data)
{
 return i2c_smbus_write_byte_data(lv->client, reg, data);
}
