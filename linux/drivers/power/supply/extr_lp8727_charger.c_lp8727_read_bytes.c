
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp8727_chg {int xfer_lock; int client; } ;
typedef scalar_t__ s32 ;


 int EIO ;
 scalar_t__ i2c_smbus_read_i2c_block_data (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp8727_read_bytes(struct lp8727_chg *pchg, u8 reg, u8 *data, u8 len)
{
 s32 ret;

 mutex_lock(&pchg->xfer_lock);
 ret = i2c_smbus_read_i2c_block_data(pchg->client, reg, len, data);
 mutex_unlock(&pchg->xfer_lock);

 return (ret != len) ? -EIO : 0;
}
