
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_property_msg {int length; int data; int property_id; } ;
struct wilco_ec_device {int dummy; } ;
struct ec_property_response {int length; } ;
struct ec_property_request {int data; int length; int property_id; int op; } ;
typedef int rq ;


 int EBADMSG ;
 int EC_OP_SET ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ec_property_request*,int ,int) ;
 int put_unaligned_le32 (int ,int ) ;
 int send_property_msg (struct wilco_ec_device*,struct ec_property_request*,struct ec_property_response*) ;

int wilco_ec_set_property(struct wilco_ec_device *ec,
     struct wilco_ec_property_msg *prop_msg)
{
 struct ec_property_request rq;
 struct ec_property_response rs;
 int ret;

 memset(&rq, 0, sizeof(rq));
 rq.op = EC_OP_SET;
 put_unaligned_le32(prop_msg->property_id, rq.property_id);
 rq.length = prop_msg->length;
 memcpy(rq.data, prop_msg->data, prop_msg->length);

 ret = send_property_msg(ec, &rq, &rs);
 if (ret < 0)
  return ret;
 if (rs.length != prop_msg->length)
  return -EBADMSG;

 return 0;
}
