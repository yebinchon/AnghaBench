
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ps3av_pkt_audio_mode {int mask; int audio_num_of_ch; int audio_fs; int audio_word_bits; int audio_format; int audio_source; int* audio_enable; int* audio_cs_info; scalar_t__ audio_downmix_level; int audio_downmix; void* audio_layout; int * audio_map; int * audio_swap; scalar_t__ avport; int send_hdr; } ;


 int CS_176 ;
 int CS_192 ;
 int CS_44 ;
 int CS_88 ;
 int CS_96 ;
 int CS_MASK ;
 int PS3AV_CID_AUDIO_MODE ;
 int PS3AV_CMD_AUDIO_DOWNMIX_PERMITTED ;
 int PS3AV_CMD_AUDIO_FORMAT_BITSTREAM ;
 int PS3AV_CMD_AUDIO_FORMAT_PCM ;



 int PS3AV_CMD_AUDIO_FS_48K ;


 void* PS3AV_CMD_AUDIO_LAYOUT_2CH ;
 void* PS3AV_CMD_AUDIO_LAYOUT_6CH ;
 void* PS3AV_CMD_AUDIO_LAYOUT_8CH ;
 int PS3AV_CMD_AUDIO_MAP_OUTPUT_0 ;
 int PS3AV_CMD_AUDIO_MAP_OUTPUT_1 ;
 int PS3AV_CMD_AUDIO_MAP_OUTPUT_2 ;
 int PS3AV_CMD_AUDIO_MAP_OUTPUT_3 ;



 int PS3AV_CMD_AUDIO_SOURCE_SERIAL ;
 int PS3AV_CMD_AUDIO_SWAP_0 ;
 void* PS3AV_CMD_AUDIO_WORD_BITS_16 ;
 int PS3AV_CMD_AVPORT_HDMI_0 ;
 int PS3AV_CMD_AVPORT_HDMI_1 ;
 int PS3AV_CMD_AVPORT_SPDIF_0 ;
 int PS3AV_CMD_AVPORT_SPDIF_1 ;
 int memset (struct ps3av_pkt_audio_mode*,int ,int) ;
 int* ps3av_mode_cs_info ;
 int ps3av_set_hdr (int ,int,int *) ;

void ps3av_cmd_set_audio_mode(struct ps3av_pkt_audio_mode *audio, u32 avport,
         u32 ch, u32 fs, u32 word_bits, u32 format,
         u32 source)
{
 int spdif_through;
 int i;

 if (!(ch | fs | format | word_bits | source)) {
  ch = 130;
  fs = PS3AV_CMD_AUDIO_FS_48K;
  word_bits = PS3AV_CMD_AUDIO_WORD_BITS_16;
  format = PS3AV_CMD_AUDIO_FORMAT_PCM;
  source = PS3AV_CMD_AUDIO_SOURCE_SERIAL;
 }


 memset(audio, 0, sizeof(*audio));
 ps3av_set_hdr(PS3AV_CID_AUDIO_MODE, sizeof(*audio), &audio->send_hdr);

 audio->avport = (u8) avport;
 audio->mask = 0x0FFF;
 audio->audio_num_of_ch = ch;
 audio->audio_fs = fs;
 audio->audio_word_bits = word_bits;
 audio->audio_format = format;
 audio->audio_source = source;

 switch (ch) {
 case 128:
  audio->audio_enable[3] = 1;

 case 129:
  audio->audio_enable[2] = 1;
  audio->audio_enable[1] = 1;

 case 130:
 default:
  audio->audio_enable[0] = 1;
 }


 for (i = 0; i < 4; i++)
  audio->audio_swap[i] = PS3AV_CMD_AUDIO_SWAP_0;


 audio->audio_map[0] = PS3AV_CMD_AUDIO_MAP_OUTPUT_0;
 audio->audio_map[1] = PS3AV_CMD_AUDIO_MAP_OUTPUT_1;
 audio->audio_map[2] = PS3AV_CMD_AUDIO_MAP_OUTPUT_2;
 audio->audio_map[3] = PS3AV_CMD_AUDIO_MAP_OUTPUT_3;


 if (avport == PS3AV_CMD_AVPORT_HDMI_0 ||
     avport == PS3AV_CMD_AVPORT_HDMI_1) {
  switch (ch) {
  case 128:
   audio->audio_layout = PS3AV_CMD_AUDIO_LAYOUT_8CH;
   break;
  case 129:
   audio->audio_layout = PS3AV_CMD_AUDIO_LAYOUT_6CH;
   break;
  case 130:
  default:
   audio->audio_layout = PS3AV_CMD_AUDIO_LAYOUT_2CH;
   break;
  }
 } else {
  audio->audio_layout = PS3AV_CMD_AUDIO_LAYOUT_2CH;
 }


 audio->audio_downmix = PS3AV_CMD_AUDIO_DOWNMIX_PERMITTED;

 audio->audio_downmix_level = 0;


 for (i = 0; i < 8; i++)
  audio->audio_cs_info[i] = ps3av_mode_cs_info[i];

 switch (fs) {
 case 133:
  audio->audio_cs_info[3] &= ~CS_MASK;
  audio->audio_cs_info[3] |= CS_44;
  break;
 case 132:
  audio->audio_cs_info[3] &= ~CS_MASK;
  audio->audio_cs_info[3] |= CS_88;
  break;
 case 131:
  audio->audio_cs_info[3] &= ~CS_MASK;
  audio->audio_cs_info[3] |= CS_96;
  break;
 case 135:
  audio->audio_cs_info[3] &= ~CS_MASK;
  audio->audio_cs_info[3] |= CS_176;
  break;
 case 134:
  audio->audio_cs_info[3] &= ~CS_MASK;
  audio->audio_cs_info[3] |= CS_192;
  break;
 default:
  break;
 }


 spdif_through = audio->audio_cs_info[0] & 0x02;


 if (spdif_through &&
     (avport == PS3AV_CMD_AVPORT_SPDIF_0 ||
      avport == PS3AV_CMD_AVPORT_SPDIF_1 ||
      avport == PS3AV_CMD_AVPORT_HDMI_0 ||
      avport == PS3AV_CMD_AVPORT_HDMI_1)) {
  audio->audio_word_bits = PS3AV_CMD_AUDIO_WORD_BITS_16;
  audio->audio_format = PS3AV_CMD_AUDIO_FORMAT_BITSTREAM;
 }
}
