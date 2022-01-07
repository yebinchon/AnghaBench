
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_fw_download_release_firmware_request {int firmware_id; } ;
struct gb_connection {int dummy; } ;
struct fw_request {int dwork; } ;
struct fw_download {int parent; } ;
struct TYPE_2__ {int payload_size; struct gb_fw_download_release_firmware_request* payload; } ;


 int EINVAL ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int,...) ;
 int free_firmware (struct fw_download*,struct fw_request*) ;
 struct fw_download* gb_connection_get_data (struct gb_connection*) ;
 struct fw_request* get_fw_req (struct fw_download*,int ) ;
 int put_fw_req (struct fw_request*) ;

__attribute__((used)) static int fw_download_release_firmware(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct fw_download *fw_download = gb_connection_get_data(connection);
 struct gb_fw_download_release_firmware_request *request;
 struct fw_request *fw_req;
 u8 firmware_id;

 if (op->request->payload_size != sizeof(*request)) {
  dev_err(fw_download->parent,
   "Illegal size of release firmware request (%zu %zu)\n",
   op->request->payload_size, sizeof(*request));
  return -EINVAL;
 }

 request = op->request->payload;
 firmware_id = request->firmware_id;

 fw_req = get_fw_req(fw_download, firmware_id);
 if (!fw_req) {
  dev_err(fw_download->parent,
   "firmware not available for id: %02u\n", firmware_id);
  return -EINVAL;
 }

 cancel_delayed_work_sync(&fw_req->dwork);

 free_firmware(fw_download, fw_req);
 put_fw_req(fw_req);

 dev_dbg(fw_download->parent, "release firmware\n");

 return 0;
}
