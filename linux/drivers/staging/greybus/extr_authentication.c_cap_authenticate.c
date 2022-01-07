
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; } ;
struct gb_connection {int dummy; } ;
struct gb_cap_authenticate_response {int * signature; int * response; int result_code; } ;
struct gb_cap_authenticate_request {int * challenge; int * uid; int auth_type; } ;
struct gb_cap {int parent; struct gb_connection* connection; } ;
struct TYPE_4__ {int payload_size; struct gb_cap_authenticate_response* payload; } ;
struct TYPE_3__ {struct gb_cap_authenticate_request* payload; } ;


 int ENOMEM ;
 int GB_CAP_TYPE_AUTHENTICATE ;
 int GB_OPERATION_FLAG_SHORT_RESPONSE ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,int) ;
 struct gb_operation* gb_operation_create_flags (struct gb_connection*,int ,int,size_t,int ,int ) ;
 size_t gb_operation_get_payload_size_max (struct gb_connection*) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int cap_authenticate(struct gb_cap *cap, u32 auth_type, u8 *uid,
       u8 *challenge, u8 *result, u8 *auth_response,
       u32 *signature_size, u8 *signature)
{
 struct gb_connection *connection = cap->connection;
 struct gb_cap_authenticate_request *request;
 struct gb_cap_authenticate_response *response;
 size_t max_size = gb_operation_get_payload_size_max(connection);
 struct gb_operation *op;
 int ret;

 op = gb_operation_create_flags(connection, GB_CAP_TYPE_AUTHENTICATE,
           sizeof(*request), max_size,
           GB_OPERATION_FLAG_SHORT_RESPONSE,
           GFP_KERNEL);
 if (!op)
  return -ENOMEM;

 request = op->request->payload;
 request->auth_type = cpu_to_le32(auth_type);
 memcpy(request->uid, uid, sizeof(request->uid));
 memcpy(request->challenge, challenge, sizeof(request->challenge));

 ret = gb_operation_request_send_sync(op);
 if (ret) {
  dev_err(cap->parent, "failed to authenticate (%d)\n", ret);
  goto done;
 }

 response = op->response->payload;
 *result = response->result_code;
 *signature_size = op->response->payload_size - sizeof(*response);
 memcpy(auth_response, response->response, sizeof(response->response));
 memcpy(signature, response->signature, *signature_size);

done:
 gb_operation_put(op);
 return ret;
}
