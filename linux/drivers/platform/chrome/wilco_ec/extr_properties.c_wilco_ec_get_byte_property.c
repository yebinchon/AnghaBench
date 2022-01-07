
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilco_ec_property_msg {int length; int * data; int property_id; } ;
struct wilco_ec_device {int dummy; } ;


 int EBADMSG ;
 int wilco_ec_get_property (struct wilco_ec_device*,struct wilco_ec_property_msg*) ;

int wilco_ec_get_byte_property(struct wilco_ec_device *ec, u32 property_id,
          u8 *val)
{
 struct wilco_ec_property_msg msg;
 int ret;

 msg.property_id = property_id;

 ret = wilco_ec_get_property(ec, &msg);
 if (ret < 0)
  return ret;
 if (msg.length != 1)
  return -EBADMSG;

 *val = msg.data[0];

 return 0;
}
