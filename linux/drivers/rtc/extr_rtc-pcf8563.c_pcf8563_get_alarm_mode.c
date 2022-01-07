
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 unsigned char PCF8563_BIT_AF ;
 unsigned char PCF8563_BIT_AIE ;
 int PCF8563_REG_ST2 ;
 int pcf8563_read_block_data (struct i2c_client*,int ,int,unsigned char*) ;

__attribute__((used)) static int pcf8563_get_alarm_mode(struct i2c_client *client, unsigned char *en,
      unsigned char *pen)
{
 unsigned char buf;
 int err;

 err = pcf8563_read_block_data(client, PCF8563_REG_ST2, 1, &buf);
 if (err)
  return err;

 if (en)
  *en = !!(buf & PCF8563_BIT_AIE);
 if (pen)
  *pen = !!(buf & PCF8563_BIT_AF);

 return 0;
}
