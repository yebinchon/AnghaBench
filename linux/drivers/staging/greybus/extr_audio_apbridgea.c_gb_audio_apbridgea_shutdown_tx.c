
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {int hd; } ;
struct TYPE_2__ {int i2s_port; int type; } ;
struct audio_apbridgea_shutdown_tx_request {TYPE_1__ hdr; } ;
typedef int req ;
typedef int __u16 ;


 int AUDIO_APBRIDGEA_TYPE_SHUTDOWN_TX ;
 int GB_APB_REQUEST_AUDIO_CONTROL ;
 int cpu_to_le16 (int ) ;
 int gb_hd_output (int ,struct audio_apbridgea_shutdown_tx_request*,int,int ,int) ;

int gb_audio_apbridgea_shutdown_tx(struct gb_connection *connection,
       __u16 i2s_port)
{
 struct audio_apbridgea_shutdown_tx_request req;

 req.hdr.type = AUDIO_APBRIDGEA_TYPE_SHUTDOWN_TX;
 req.hdr.i2s_port = cpu_to_le16(i2s_port);

 return gb_hd_output(connection->hd, &req, sizeof(req),
       GB_APB_REQUEST_AUDIO_CONTROL, 1);
}
