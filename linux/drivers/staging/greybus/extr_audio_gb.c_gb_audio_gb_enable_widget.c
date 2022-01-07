
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_connection {int dummy; } ;
struct gb_audio_enable_widget_request {int widget_id; } ;
typedef int req ;


 int GB_AUDIO_TYPE_ENABLE_WIDGET ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_enable_widget_request*,int,int *,int ) ;

int gb_audio_gb_enable_widget(struct gb_connection *connection,
         u8 widget_id)
{
 struct gb_audio_enable_widget_request req;

 req.widget_id = widget_id;

 return gb_operation_sync(connection, GB_AUDIO_TYPE_ENABLE_WIDGET,
     &req, sizeof(req), ((void*)0), 0);
}
