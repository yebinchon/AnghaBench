
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_set_rx_data_size_request {void* size; void* data_cport; } ;
typedef int req ;


 int GB_AUDIO_TYPE_SET_RX_DATA_SIZE ;
 void* cpu_to_le16 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_set_rx_data_size_request*,int,int *,int ) ;

int gb_audio_gb_set_rx_data_size(struct gb_connection *connection,
     u16 data_cport, u16 size)
{
 struct gb_audio_set_rx_data_size_request req;

 req.data_cport = cpu_to_le16(data_cport);
 req.size = cpu_to_le16(size);

 return gb_operation_sync(connection, GB_AUDIO_TYPE_SET_RX_DATA_SIZE,
     &req, sizeof(req), ((void*)0), 0);
}
