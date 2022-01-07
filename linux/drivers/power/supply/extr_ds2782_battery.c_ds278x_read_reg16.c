
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds278x_info {TYPE_1__* client; } ;
typedef int s16 ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_data (TYPE_1__*,int) ;
 int swab16 (int) ;

__attribute__((used)) static inline int ds278x_read_reg16(struct ds278x_info *info, int reg_msb,
        s16 *val)
{
 int ret;

 ret = i2c_smbus_read_word_data(info->client, reg_msb);
 if (ret < 0) {
  dev_err(&info->client->dev, "register read failed\n");
  return ret;
 }

 *val = swab16(ret);
 return 0;
}
