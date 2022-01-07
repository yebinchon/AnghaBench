
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_set_pcm_request {void* sig_bits; void* channels; void* rate; void* format; int data_cport; } ;
typedef int req ;


 int GB_AUDIO_TYPE_SET_PCM ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_audio_set_pcm_request*,int,int *,int ) ;

int gb_audio_gb_set_pcm(struct gb_connection *connection, u16 data_cport,
   u32 format, u32 rate, u8 channels,
   u8 sig_bits)
{
 struct gb_audio_set_pcm_request req;

 req.data_cport = cpu_to_le16(data_cport);
 req.format = cpu_to_le32(format);
 req.rate = cpu_to_le32(rate);
 req.channels = channels;
 req.sig_bits = sig_bits;

 return gb_operation_sync(connection, GB_AUDIO_TYPE_SET_PCM,
     &req, sizeof(req), ((void*)0), 0);
}
