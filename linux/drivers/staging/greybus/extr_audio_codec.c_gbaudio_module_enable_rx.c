
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct gbaudio_stream_params {int sig_bits; int rate; int channels; int format; } ;
struct gbaudio_module_info {int dev; int mgmt_connection; } ;
struct gbaudio_data_connection {int* state; TYPE_1__* connection; } ;
struct gbaudio_codec_info {int dev; } ;
struct TYPE_2__ {scalar_t__ intf_cport_id; scalar_t__ hd_cport_id; } ;


 int AUDIO_APBRIDGEA_DIRECTION_RX ;
 int EINVAL ;
 int ENODEV ;
 int GBAUDIO_CODEC_HWPARAMS ;
 int GBAUDIO_CODEC_PREPARE ;
 int GBAUDIO_CODEC_STARTUP ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dev_err_ratelimited (int ,char*,int) ;
 struct gbaudio_stream_params* find_dai_stream_params (struct gbaudio_codec_info*,int,size_t) ;
 struct gbaudio_data_connection* find_data (struct gbaudio_module_info*,int) ;
 int gb_audio_apbridgea_register_cport (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int gb_audio_gb_activate_rx (int ,scalar_t__) ;
 int gb_audio_gb_set_pcm (int ,scalar_t__,int ,int ,int ,int ) ;
 int gb_audio_gb_set_rx_data_size (int ,scalar_t__,int) ;

__attribute__((used)) static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
        struct gbaudio_module_info *module, int id)
{
 int module_state, ret = 0;
 u16 data_cport, i2s_port, cportid;
 u8 sig_bits, channels;
 u32 format, rate;
 struct gbaudio_data_connection *data;
 struct gbaudio_stream_params *params;


 data = find_data(module, id);
 if (!data) {
  dev_err(module->dev, "%d:DATA connection missing\n", id);
  return -ENODEV;
 }
 module_state = data->state[SNDRV_PCM_STREAM_CAPTURE];

 params = find_dai_stream_params(codec, id, SNDRV_PCM_STREAM_CAPTURE);
 if (!params) {
  dev_err(codec->dev, "Failed to fetch dai_stream pointer\n");
  return -EINVAL;
 }


 if (module_state < GBAUDIO_CODEC_STARTUP) {
  i2s_port = 0;
  cportid = data->connection->hd_cport_id;
  ret = gb_audio_apbridgea_register_cport(data->connection,
      i2s_port, cportid,
      AUDIO_APBRIDGEA_DIRECTION_RX);
  if (ret) {
   dev_err_ratelimited(module->dev,
         "reg_cport failed:%d\n", ret);
   return ret;
  }
  data->state[SNDRV_PCM_STREAM_CAPTURE] =
   GBAUDIO_CODEC_STARTUP;
  dev_dbg(module->dev, "Dynamic Register %d DAI\n", cportid);
 }


 if (module_state < GBAUDIO_CODEC_HWPARAMS) {
  format = params->format;
  channels = params->channels;
  rate = params->rate;
  sig_bits = params->sig_bits;
  data_cport = data->connection->intf_cport_id;
  ret = gb_audio_gb_set_pcm(module->mgmt_connection, data_cport,
       format, rate, channels, sig_bits);
  if (ret) {
   dev_err_ratelimited(module->dev, "set_pcm failed:%d\n",
         ret);
   return ret;
  }
  data->state[SNDRV_PCM_STREAM_CAPTURE] =
   GBAUDIO_CODEC_HWPARAMS;
  dev_dbg(module->dev, "Dynamic hw_params %d DAI\n", data_cport);
 }


 if (module_state < GBAUDIO_CODEC_PREPARE) {
  data_cport = data->connection->intf_cport_id;
  ret = gb_audio_gb_set_rx_data_size(module->mgmt_connection,
         data_cport, 192);
  if (ret) {
   dev_err_ratelimited(module->dev,
         "set_rx_data_size failed:%d\n",
         ret);
   return ret;
  }
  ret = gb_audio_gb_activate_rx(module->mgmt_connection,
           data_cport);
  if (ret) {
   dev_err_ratelimited(module->dev,
         "activate_rx failed:%d\n", ret);
   return ret;
  }
  data->state[SNDRV_PCM_STREAM_CAPTURE] =
   GBAUDIO_CODEC_PREPARE;
  dev_dbg(module->dev, "Dynamic prepare %d DAI\n", data_cport);
 }

 return 0;
}
