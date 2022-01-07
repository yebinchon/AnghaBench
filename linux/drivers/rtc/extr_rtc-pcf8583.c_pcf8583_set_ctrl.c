
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,char*,int) ;
 int set_ctrl (struct i2c_client*,unsigned char) ;

__attribute__((used)) static int pcf8583_set_ctrl(struct i2c_client *client, unsigned char *ctrl)
{
 unsigned char buf[2];

 buf[0] = 0;
 buf[1] = *ctrl;
 set_ctrl(client, *ctrl);

 return i2c_master_send(client, (char *)buf, 2);
}
