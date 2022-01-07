
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct gbaudio_data_connection {int * state; TYPE_2__* connection; } ;
struct TYPE_6__ {scalar_t__ hd_cport_id; } ;
struct TYPE_5__ {int module_list; } ;


 int AUDIO_APBRIDGEA_DIRECTION_RX ;
 int GBAUDIO_CODEC_SHUTDOWN ;
 int gb_audio_apbridgea_shutdown_rx (TYPE_2__*,int ) ;
 int gb_audio_apbridgea_stop_rx (TYPE_2__*,int ) ;
 int gb_audio_apbridgea_unregister_cport (TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 TYPE_1__* gbcodec ;
 scalar_t__ list_is_singular (int *) ;

__attribute__((used)) static void gbaudio_codec_clean_data_rx(struct gbaudio_data_connection *data)
{
 u16 i2s_port, cportid;
 int ret;

 if (list_is_singular(&gbcodec->module_list)) {
  ret = gb_audio_apbridgea_stop_rx(data->connection, 0);
  if (ret)
   return;
  ret = gb_audio_apbridgea_shutdown_rx(data->connection,
           0);
  if (ret)
   return;
 }
 i2s_port = 0;
 cportid = data->connection->hd_cport_id;
 ret = gb_audio_apbridgea_unregister_cport(data->connection,
        i2s_port, cportid,
        AUDIO_APBRIDGEA_DIRECTION_RX);
 data->state[1] = GBAUDIO_CODEC_SHUTDOWN;
}
