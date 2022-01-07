
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {int hd; } ;
struct TYPE_2__ {void* i2s_port; int type; } ;
struct audio_apbridgea_set_tx_data_size_request {void* size; TYPE_1__ hdr; } ;
typedef int req ;
typedef int __u16 ;


 int AUDIO_APBRIDGEA_TYPE_SET_TX_DATA_SIZE ;
 int GB_APB_REQUEST_AUDIO_CONTROL ;
 void* cpu_to_le16 (int ) ;
 int gb_hd_output (int ,struct audio_apbridgea_set_tx_data_size_request*,int,int ,int) ;

int gb_audio_apbridgea_set_tx_data_size(struct gb_connection *connection,
     __u16 i2s_port, __u16 size)
{
 struct audio_apbridgea_set_tx_data_size_request req;

 req.hdr.type = AUDIO_APBRIDGEA_TYPE_SET_TX_DATA_SIZE;
 req.hdr.i2s_port = cpu_to_le16(i2s_port);
 req.size = cpu_to_le16(size);

 return gb_hd_output(connection->hd, &req, sizeof(req),
       GB_APB_REQUEST_AUDIO_CONTROL, 1);
}
