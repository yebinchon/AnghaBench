
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct arcxcnn {TYPE_2__* bl; int client; } ;
struct TYPE_3__ {scalar_t__ brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int ARCXCNN_CMD ;
 int ARCXCNN_CMD_RESET ;
 int ARCXCNN_LEDEN ;
 int backlight_update_status (TYPE_2__*) ;
 struct arcxcnn* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int arcxcnn_remove(struct i2c_client *cl)
{
 struct arcxcnn *lp = i2c_get_clientdata(cl);


 i2c_smbus_write_byte_data(lp->client,
  ARCXCNN_LEDEN, 0x00);

 i2c_smbus_write_byte_data(lp->client,
  ARCXCNN_CMD, ARCXCNN_CMD_RESET);

 lp->bl->props.brightness = 0;

 backlight_update_status(lp->bl);

 return 0;
}
