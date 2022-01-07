
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_connection {int dummy; } ;
struct gb_audio_get_control_response {int value; } ;
struct gb_audio_get_control_request {void* index; void* control_id; } ;
struct gb_audio_ctl_elem_value {int dummy; } ;
typedef int resp ;
typedef int req ;


 int GB_AUDIO_TYPE_GET_CONTROL ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_get_control_request*,int,struct gb_audio_get_control_response*,int) ;
 int memcpy (struct gb_audio_ctl_elem_value*,int *,int) ;

int gb_audio_gb_get_control(struct gb_connection *connection,
       u8 control_id, u8 index,
       struct gb_audio_ctl_elem_value *value)
{
 struct gb_audio_get_control_request req;
 struct gb_audio_get_control_response resp;
 int ret;

 req.control_id = control_id;
 req.index = index;

 ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_CONTROL,
    &req, sizeof(req), &resp, sizeof(resp));
 if (ret)
  return ret;

 memcpy(value, &resp.value, sizeof(*value));

 return 0;
}
