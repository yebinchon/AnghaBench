
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_request {int data_size; scalar_t__ checksum; int mailbox_version; int mailbox_id; int struct_version; } ;
struct wilco_ec_message {int request_size; struct wilco_ec_request* request_data; int type; } ;


 int EC_MAILBOX_PROTO_VERSION ;
 int EC_MAILBOX_VERSION ;
 int memset (struct wilco_ec_request*,int ,int) ;
 scalar_t__ wilco_ec_checksum (struct wilco_ec_request*,int) ;

__attribute__((used)) static void wilco_ec_prepare(struct wilco_ec_message *msg,
        struct wilco_ec_request *rq)
{
 memset(rq, 0, sizeof(*rq));
 rq->struct_version = EC_MAILBOX_PROTO_VERSION;
 rq->mailbox_id = msg->type;
 rq->mailbox_version = EC_MAILBOX_VERSION;
 rq->data_size = msg->request_size;


 rq->checksum = wilco_ec_checksum(rq, sizeof(*rq));
 rq->checksum += wilco_ec_checksum(msg->request_data, msg->request_size);
 rq->checksum = -rq->checksum;
}
