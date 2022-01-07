
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_operation {TYPE_2__* response; TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_fw_download_find_firmware_response {int size; int firmware_id; } ;
struct gb_fw_download_find_firmware_request {scalar_t__ firmware_tag; } ;
struct gb_connection {int dummy; } ;
struct fw_request {TYPE_3__* fw; int firmware_id; } ;
struct fw_download {int parent; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_5__ {struct gb_fw_download_find_firmware_response* payload; } ;
struct TYPE_4__ {int payload_size; struct gb_fw_download_find_firmware_request* payload; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ GB_FIRMWARE_TAG_MAX_SIZE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fw_request*) ;
 int PTR_ERR (struct fw_request*) ;
 int cpu_to_le32 (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,...) ;
 struct fw_request* find_firmware (struct fw_download*,char const*) ;
 int free_firmware (struct fw_download*,struct fw_request*) ;
 struct fw_download* gb_connection_get_data (struct gb_connection*) ;
 int gb_operation_response_alloc (struct gb_operation*,int,int ) ;
 scalar_t__ strnlen (char const*,scalar_t__) ;

__attribute__((used)) static int fw_download_find_firmware(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct fw_download *fw_download = gb_connection_get_data(connection);
 struct gb_fw_download_find_firmware_request *request;
 struct gb_fw_download_find_firmware_response *response;
 struct fw_request *fw_req;
 const char *tag;

 if (op->request->payload_size != sizeof(*request)) {
  dev_err(fw_download->parent,
   "illegal size of find firmware request (%zu != %zu)\n",
   op->request->payload_size, sizeof(*request));
  return -EINVAL;
 }

 request = op->request->payload;
 tag = (const char *)request->firmware_tag;


 if (strnlen(tag, GB_FIRMWARE_TAG_MAX_SIZE) ==
     GB_FIRMWARE_TAG_MAX_SIZE) {
  dev_err(fw_download->parent,
   "firmware-tag is not null-terminated\n");
  return -EINVAL;
 }

 fw_req = find_firmware(fw_download, tag);
 if (IS_ERR(fw_req))
  return PTR_ERR(fw_req);

 if (!gb_operation_response_alloc(op, sizeof(*response), GFP_KERNEL)) {
  dev_err(fw_download->parent, "error allocating response\n");
  free_firmware(fw_download, fw_req);
  return -ENOMEM;
 }

 response = op->response->payload;
 response->firmware_id = fw_req->firmware_id;
 response->size = cpu_to_le32(fw_req->fw->size);

 dev_dbg(fw_download->parent,
  "firmware size is %zu bytes\n", fw_req->fw->size);

 return 0;
}
