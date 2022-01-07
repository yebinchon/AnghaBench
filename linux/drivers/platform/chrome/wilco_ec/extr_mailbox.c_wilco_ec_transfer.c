
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wilco_ec_response {int data_size; int data; scalar_t__ result; int checksum; } ;
struct wilco_ec_request {int dummy; } ;
struct wilco_ec_message {int request_size; int flags; int response_size; int response_data; scalar_t__* request_data; } ;
struct wilco_ec_device {int dev; struct wilco_ec_response* data_buffer; TYPE_2__* io_data; TYPE_1__* io_command; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int start; } ;


 int EBADMSG ;
 int EC_MAILBOX_DATA_SIZE ;
 int EC_MAILBOX_START_COMMAND ;
 int EIO ;
 int EMSGSIZE ;
 int ETIMEDOUT ;
 int MEC_IO_READ ;
 int MEC_IO_WRITE ;
 int WILCO_EC_FLAG_NO_RESPONSE ;
 scalar_t__ cros_ec_lpc_io_bytes_mec (int ,int,int,scalar_t__*) ;
 int dev_dbg (int ,char*,...) ;
 scalar_t__ inb (int ) ;
 int memcpy (int ,int ,int) ;
 int outb (int ,int ) ;
 scalar_t__ wilco_ec_response_timed_out (struct wilco_ec_device*) ;

__attribute__((used)) static int wilco_ec_transfer(struct wilco_ec_device *ec,
        struct wilco_ec_message *msg,
        struct wilco_ec_request *rq)
{
 struct wilco_ec_response *rs;
 u8 checksum;
 u8 flag;


 cros_ec_lpc_io_bytes_mec(MEC_IO_WRITE, 0, sizeof(*rq), (u8 *)rq);
 cros_ec_lpc_io_bytes_mec(MEC_IO_WRITE, sizeof(*rq), msg->request_size,
     msg->request_data);


 outb(EC_MAILBOX_START_COMMAND, ec->io_command->start);


 if (msg->flags & WILCO_EC_FLAG_NO_RESPONSE) {
  dev_dbg(ec->dev, "EC does not respond to this command\n");
  return 0;
 }


 if (wilco_ec_response_timed_out(ec)) {
  dev_dbg(ec->dev, "response timed out\n");
  return -ETIMEDOUT;
 }


 flag = inb(ec->io_data->start);
 if (flag) {
  dev_dbg(ec->dev, "bad response: 0x%02x\n", flag);
  return -EIO;
 }


 rs = ec->data_buffer;
 checksum = cros_ec_lpc_io_bytes_mec(MEC_IO_READ, 0,
         sizeof(*rs) + EC_MAILBOX_DATA_SIZE,
         (u8 *)rs);
 if (checksum) {
  dev_dbg(ec->dev, "bad packet checksum 0x%02x\n", rs->checksum);
  return -EBADMSG;
 }

 if (rs->result) {
  dev_dbg(ec->dev, "EC reported failure: 0x%02x\n", rs->result);
  return -EBADMSG;
 }

 if (rs->data_size != EC_MAILBOX_DATA_SIZE) {
  dev_dbg(ec->dev, "unexpected packet size (%u != %u)",
   rs->data_size, EC_MAILBOX_DATA_SIZE);
  return -EMSGSIZE;
 }

 if (rs->data_size < msg->response_size) {
  dev_dbg(ec->dev, "EC didn't return enough data (%u < %zu)",
   rs->data_size, msg->response_size);
  return -EMSGSIZE;
 }

 memcpy(msg->response_data, rs->data, msg->response_size);

 return rs->data_size;
}
