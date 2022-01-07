
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct i2c_msg {int flags; int len; int buf; } ;
struct gb_i2c_transfer_response {int * data; } ;


 int I2C_M_RD ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void gb_i2c_decode_response(struct i2c_msg *msgs, u32 msg_count,
       struct gb_i2c_transfer_response *response)
{
 struct i2c_msg *msg = msgs;
 u8 *data;
 u32 i;

 if (!response)
  return;
 data = response->data;
 for (i = 0; i < msg_count; i++) {
  if (msg->flags & I2C_M_RD) {
   memcpy(msg->buf, data, msg->len);
   data += msg->len;
  }
  msg++;
 }
}
