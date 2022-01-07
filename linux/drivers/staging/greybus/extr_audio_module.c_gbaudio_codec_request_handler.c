
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gbaudio_module_info {int dummy; } ;
struct gb_operation_msg_hdr {int type; } ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_connection {TYPE_2__* bundle; } ;
struct gb_audio_streaming_event_request {int dummy; } ;
typedef struct gb_audio_streaming_event_request gb_audio_jack_event_request ;
typedef struct gb_audio_streaming_event_request gb_audio_button_event_request ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct gb_audio_streaming_event_request* payload; struct gb_operation_msg_hdr* header; } ;


 int EINVAL ;



 int dev_err_ratelimited (int *,char*) ;
 int gbaudio_request_button (struct gbaudio_module_info*,struct gb_audio_streaming_event_request*) ;
 int gbaudio_request_jack (struct gbaudio_module_info*,struct gb_audio_streaming_event_request*) ;
 int gbaudio_request_stream (struct gbaudio_module_info*,struct gb_audio_streaming_event_request*) ;
 struct gbaudio_module_info* greybus_get_drvdata (TYPE_2__*) ;

__attribute__((used)) static int gbaudio_codec_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gbaudio_module_info *module =
  greybus_get_drvdata(connection->bundle);
 struct gb_operation_msg_hdr *header = op->request->header;
 struct gb_audio_streaming_event_request *stream_req;
 struct gb_audio_jack_event_request *jack_req;
 struct gb_audio_button_event_request *button_req;
 int ret;

 switch (header->type) {
 case 128:
  stream_req = op->request->payload;
  ret = gbaudio_request_stream(module, stream_req);
  break;

 case 129:
  jack_req = op->request->payload;
  ret = gbaudio_request_jack(module, jack_req);
  break;

 case 130:
  button_req = op->request->payload;
  ret = gbaudio_request_button(module, button_req);
  break;

 default:
  dev_err_ratelimited(&connection->bundle->dev,
        "Invalid Audio Event received\n");
  return -EINVAL;
 }

 return ret;
}
