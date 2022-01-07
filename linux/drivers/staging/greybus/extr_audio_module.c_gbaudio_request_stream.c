
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbaudio_module_info {int dev; } ;
struct gb_audio_streaming_event_request {int event; int data_cport; } ;


 int dev_warn (int ,char*,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gbaudio_request_stream(struct gbaudio_module_info *module,
      struct gb_audio_streaming_event_request *req)
{
 dev_warn(module->dev, "Audio Event received: cport: %u, event: %u\n",
   le16_to_cpu(req->data_cport), req->event);

 return 0;
}
