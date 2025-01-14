
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_mem {int loc; int nr; int data; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int pcf8583_write_mem(struct i2c_client *client, struct rtc_mem *mem)
{
 unsigned char buf[9];
 int ret;

 if (mem->loc < 8 || mem->nr > 8)
  return -EINVAL;

 buf[0] = mem->loc;
 memcpy(buf + 1, mem->data, mem->nr);

 ret = i2c_master_send(client, buf, mem->nr + 1);
 return ret == mem->nr + 1 ? 0 : -EIO;
}
