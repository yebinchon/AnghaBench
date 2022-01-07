
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_deactivate_tx_request {int data_cport; } ;
typedef int req ;


 int GB_AUDIO_TYPE_DEACTIVATE_TX ;
 int cpu_to_le16 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_deactivate_tx_request*,int,int *,int ) ;

int gb_audio_gb_deactivate_tx(struct gb_connection *connection,
         u16 data_cport)
{
 struct gb_audio_deactivate_tx_request req;

 req.data_cport = cpu_to_le16(data_cport);

 return gb_operation_sync(connection, GB_AUDIO_TYPE_DEACTIVATE_TX,
     &req, sizeof(req), ((void*)0), 0);
}
