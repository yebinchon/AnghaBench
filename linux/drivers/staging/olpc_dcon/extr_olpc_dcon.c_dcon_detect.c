
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int type; } ;


 int I2C_NAME_SIZE ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int dcon_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 strlcpy(info->type, "olpc_dcon", I2C_NAME_SIZE);

 return 0;
}
