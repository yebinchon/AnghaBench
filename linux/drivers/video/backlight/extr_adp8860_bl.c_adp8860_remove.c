
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct adp8860_bl {TYPE_2__* bl; scalar_t__ en_ambl_sens; scalar_t__ led; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ADP8860_MDCR ;
 int NSTBY ;
 int adp8860_bl_attr_group ;
 int adp8860_clr_bits (struct i2c_client*,int ,int ) ;
 int adp8860_led_remove (struct i2c_client*) ;
 struct adp8860_bl* i2c_get_clientdata (struct i2c_client*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adp8860_remove(struct i2c_client *client)
{
 struct adp8860_bl *data = i2c_get_clientdata(client);

 adp8860_clr_bits(client, ADP8860_MDCR, NSTBY);

 if (data->led)
  adp8860_led_remove(client);

 if (data->en_ambl_sens)
  sysfs_remove_group(&data->bl->dev.kobj,
   &adp8860_bl_attr_group);

 return 0;
}
