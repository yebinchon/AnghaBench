
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gb_connection {int dummy; } ;
struct gb_audio_set_control_request {int value; void* index; void* control_id; } ;
struct gb_audio_ctl_elem_value {int dummy; } ;
typedef int req ;


 int GB_AUDIO_TYPE_SET_CONTROL ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_set_control_request*,int,int *,int ) ;
 int memcpy (int *,struct gb_audio_ctl_elem_value*,int) ;

int gb_audio_gb_set_control(struct gb_connection *connection,
       u8 control_id, u8 index,
       struct gb_audio_ctl_elem_value *value)
{
 struct gb_audio_set_control_request req;

 req.control_id = control_id;
 req.index = index;
 memcpy(&req.value, value, sizeof(req.value));

 return gb_operation_sync(connection, GB_AUDIO_TYPE_SET_CONTROL,
     &req, sizeof(req), ((void*)0), 0);
}
