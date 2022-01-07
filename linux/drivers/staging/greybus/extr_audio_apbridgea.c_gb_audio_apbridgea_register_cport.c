
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {int hd; int bundle; } ;
struct TYPE_2__ {void* i2s_port; int type; } ;
struct audio_apbridgea_register_cport_request {int direction; void* cport; TYPE_1__ hdr; } ;
typedef int req ;
typedef int __u8 ;
typedef int __u16 ;


 int AUDIO_APBRIDGEA_TYPE_REGISTER_CPORT ;
 int GB_APB_REQUEST_AUDIO_CONTROL ;
 void* cpu_to_le16 (int ) ;
 int gb_hd_output (int ,struct audio_apbridgea_register_cport_request*,int,int ,int) ;
 int gb_pm_runtime_get_sync (int ) ;

int gb_audio_apbridgea_register_cport(struct gb_connection *connection,
          __u16 i2s_port, __u16 cportid,
          __u8 direction)
{
 struct audio_apbridgea_register_cport_request req;
 int ret;

 req.hdr.type = AUDIO_APBRIDGEA_TYPE_REGISTER_CPORT;
 req.hdr.i2s_port = cpu_to_le16(i2s_port);
 req.cport = cpu_to_le16(cportid);
 req.direction = direction;

 ret = gb_pm_runtime_get_sync(connection->bundle);
 if (ret)
  return ret;

 return gb_hd_output(connection->hd, &req, sizeof(req),
       GB_APB_REQUEST_AUDIO_CONTROL, 1);
}
