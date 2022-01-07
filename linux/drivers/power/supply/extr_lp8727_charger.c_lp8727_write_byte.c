
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_chg {int xfer_lock; int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp8727_write_byte(struct lp8727_chg *pchg, u8 reg, u8 data)
{
 int ret;

 mutex_lock(&pchg->xfer_lock);
 ret = i2c_smbus_write_byte_data(pchg->client, reg, data);
 mutex_unlock(&pchg->xfer_lock);

 return ret;
}
