
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_get_pcm_response {int sig_bits; int channels; int rate; int format; } ;
struct gb_audio_get_pcm_request {int data_cport; } ;
typedef int resp ;
typedef int req ;


 int GB_AUDIO_TYPE_GET_PCM ;
 int cpu_to_le16 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_get_pcm_request*,int,struct gb_audio_get_pcm_response*,int) ;
 int le32_to_cpu (int ) ;

int gb_audio_gb_get_pcm(struct gb_connection *connection, u16 data_cport,
   u32 *format, u32 *rate, u8 *channels,
   u8 *sig_bits)
{
 struct gb_audio_get_pcm_request req;
 struct gb_audio_get_pcm_response resp;
 int ret;

 req.data_cport = cpu_to_le16(data_cport);

 ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_PCM,
    &req, sizeof(req), &resp, sizeof(resp));
 if (ret)
  return ret;

 *format = le32_to_cpu(resp.format);
 *rate = le32_to_cpu(resp.rate);
 *channels = resp.channels;
 *sig_bits = resp.sig_bits;

 return 0;
}
