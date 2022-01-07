
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilco_ec_property_msg {int length; int * data; int property_id; } ;
struct wilco_ec_device {int dummy; } ;


 int wilco_ec_set_property (struct wilco_ec_device*,struct wilco_ec_property_msg*) ;

int wilco_ec_set_byte_property(struct wilco_ec_device *ec, u32 property_id,
          u8 val)
{
 struct wilco_ec_property_msg msg;

 msg.property_id = property_id;
 msg.data[0] = val;
 msg.length = 1;

 return wilco_ec_set_property(ec, &msg);
}
