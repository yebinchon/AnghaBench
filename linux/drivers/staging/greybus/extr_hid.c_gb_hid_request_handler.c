
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gb_operation {scalar_t__ type; TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_hid_input_report_request {int report; } ;
struct gb_hid {int hid; int flags; } ;
struct gb_connection {TYPE_2__* bundle; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int payload_size; struct gb_hid_input_report_request* payload; } ;


 int EINVAL ;
 int GB_HID_STARTED ;
 scalar_t__ GB_HID_TYPE_IRQ_EVENT ;
 int HID_INPUT_REPORT ;
 int dev_err (int *,char*) ;
 struct gb_hid* gb_connection_get_data (struct gb_connection*) ;
 int hid_input_report (int ,int ,int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int gb_hid_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_hid *ghid = gb_connection_get_data(connection);
 struct gb_hid_input_report_request *request = op->request->payload;

 if (op->type != GB_HID_TYPE_IRQ_EVENT) {
  dev_err(&connection->bundle->dev,
   "unsupported unsolicited request\n");
  return -EINVAL;
 }

 if (test_bit(GB_HID_STARTED, &ghid->flags))
  hid_input_report(ghid->hid, HID_INPUT_REPORT,
     request->report, op->request->payload_size, 1);

 return 0;
}
