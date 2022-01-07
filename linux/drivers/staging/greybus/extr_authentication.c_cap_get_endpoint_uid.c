
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_connection {int dummy; } ;
struct gb_cap_get_endpoint_uid_response {int uid; } ;
struct gb_cap {int parent; struct gb_connection* connection; } ;
typedef int response ;


 int GB_CAP_TYPE_GET_ENDPOINT_UID ;
 int dev_err (int ,char*,int) ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,struct gb_cap_get_endpoint_uid_response*,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int cap_get_endpoint_uid(struct gb_cap *cap, u8 *euid)
{
 struct gb_connection *connection = cap->connection;
 struct gb_cap_get_endpoint_uid_response response;
 int ret;

 ret = gb_operation_sync(connection, GB_CAP_TYPE_GET_ENDPOINT_UID, ((void*)0),
    0, &response, sizeof(response));
 if (ret) {
  dev_err(cap->parent, "failed to get endpoint uid (%d)\n", ret);
  return ret;
 }

 memcpy(euid, response.uid, sizeof(response.uid));

 return 0;
}
