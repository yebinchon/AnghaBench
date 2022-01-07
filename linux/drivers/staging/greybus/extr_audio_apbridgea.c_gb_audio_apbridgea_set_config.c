
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {int hd; } ;
struct TYPE_2__ {int i2s_port; int type; } ;
struct audio_apbridgea_set_config_request {void* mclk_freq; void* rate; void* format; TYPE_1__ hdr; } ;
typedef int req ;
typedef int __u32 ;
typedef int __u16 ;


 int AUDIO_APBRIDGEA_TYPE_SET_CONFIG ;
 int GB_APB_REQUEST_AUDIO_CONTROL ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int gb_hd_output (int ,struct audio_apbridgea_set_config_request*,int,int ,int) ;

int gb_audio_apbridgea_set_config(struct gb_connection *connection,
      __u16 i2s_port, __u32 format, __u32 rate,
      __u32 mclk_freq)
{
 struct audio_apbridgea_set_config_request req;

 req.hdr.type = AUDIO_APBRIDGEA_TYPE_SET_CONFIG;
 req.hdr.i2s_port = cpu_to_le16(i2s_port);
 req.format = cpu_to_le32(format);
 req.rate = cpu_to_le32(rate);
 req.mclk_freq = cpu_to_le32(mclk_freq);

 return gb_hd_output(connection->hd, &req, sizeof(req),
       GB_APB_REQUEST_AUDIO_CONTROL, 1);
}
