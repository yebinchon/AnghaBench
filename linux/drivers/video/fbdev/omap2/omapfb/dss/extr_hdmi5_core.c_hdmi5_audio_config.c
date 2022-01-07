
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_dss_audio {TYPE_2__* cea; TYPE_1__* iec; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_core_data {int dummy; } ;
struct hdmi_core_audio_config {int n; int cts; int layout; TYPE_1__* iec60958_cfg; } ;
struct hdmi_audio_format {int en_sig_blk_strt_end; void* sample_order; int type; int justification; int sample_size; int samples_per_word; } ;
struct hdmi_audio_dma {int transfer_size; int block_size; int fifo_threshold; int mode; } ;
struct TYPE_4__ {int db1_ct_cc; } ;
struct TYPE_3__ {int* status; } ;


 int CEA861_AUDIO_INFOFRAME_DB1CC ;
 int EINVAL ;
 int HDMI_AUDIO_BLOCK_SIG_STARTEND_ON ;
 int HDMI_AUDIO_JUSTIFY_LEFT ;
 int HDMI_AUDIO_LAYOUT_2CH ;
 int HDMI_AUDIO_LAYOUT_6CH ;
 int HDMI_AUDIO_LAYOUT_8CH ;
 int HDMI_AUDIO_ONEWORD_TWOSAMPLES ;
 int HDMI_AUDIO_SAMPLE_16BITS ;
 void* HDMI_AUDIO_SAMPLE_LEFT_FIRST ;
 int HDMI_AUDIO_TRANSF_DMA ;
 int HDMI_AUDIO_TYPE_LPCM ;
 int IEC958_AES3_CON_FS ;







 int IEC958_AES4_CON_MAX_WORDLEN_24 ;
 int IEC958_AES4_CON_WORDLEN_20_16 ;
 int hdmi5_core_audio_config (struct hdmi_core_data*,struct hdmi_core_audio_config*) ;
 int hdmi5_core_audio_infoframe_cfg (struct hdmi_core_data*,TYPE_2__*) ;
 int hdmi_compute_acr (int ,unsigned int,int*,int*) ;
 int hdmi_wp_audio_config_dma (struct hdmi_wp_data*,struct hdmi_audio_dma*) ;
 int hdmi_wp_audio_config_format (struct hdmi_wp_data*,struct hdmi_audio_format*) ;

int hdmi5_audio_config(struct hdmi_core_data *core, struct hdmi_wp_data *wp,
   struct omap_dss_audio *audio, u32 pclk)
{
 struct hdmi_audio_format audio_format;
 struct hdmi_audio_dma audio_dma;
 struct hdmi_core_audio_config core_cfg;
 int err, n, cts, channel_count;
 unsigned int fs_nr;
 bool word_length_16b = 0;

 if (!audio || !audio->iec || !audio->cea || !core)
  return -EINVAL;

 core_cfg.iec60958_cfg = audio->iec;

 if (!(audio->iec->status[4] & IEC958_AES4_CON_MAX_WORDLEN_24) &&
  (audio->iec->status[4] & IEC958_AES4_CON_WORDLEN_20_16))
   word_length_16b = 1;


 if (!word_length_16b)
  return -EINVAL;

 switch (audio->iec->status[3] & IEC958_AES3_CON_FS) {
 case 132:
  fs_nr = 32000;
  break;
 case 131:
  fs_nr = 44100;
  break;
 case 130:
  fs_nr = 48000;
  break;
 case 129:
  fs_nr = 88200;
  break;
 case 128:
  fs_nr = 96000;
  break;
 case 134:
  fs_nr = 176400;
  break;
 case 133:
  fs_nr = 192000;
  break;
 default:
  return -EINVAL;
 }

 err = hdmi_compute_acr(pclk, fs_nr, &n, &cts);
 core_cfg.n = n;
 core_cfg.cts = cts;


 channel_count = (audio->cea->db1_ct_cc & CEA861_AUDIO_INFOFRAME_DB1CC)
    + 1;

 if (channel_count == 2)
  core_cfg.layout = HDMI_AUDIO_LAYOUT_2CH;
 else if (channel_count == 6)
  core_cfg.layout = HDMI_AUDIO_LAYOUT_6CH;
 else
  core_cfg.layout = HDMI_AUDIO_LAYOUT_8CH;


 if (word_length_16b)
  audio_dma.transfer_size = 0x10;
 else
  audio_dma.transfer_size = 0x20;
 audio_dma.block_size = 0xC0;
 audio_dma.mode = HDMI_AUDIO_TRANSF_DMA;
 audio_dma.fifo_threshold = 0x20;


 audio_format.samples_per_word = HDMI_AUDIO_ONEWORD_TWOSAMPLES;
 audio_format.sample_size = HDMI_AUDIO_SAMPLE_16BITS;
 audio_format.justification = HDMI_AUDIO_JUSTIFY_LEFT;
 audio_format.sample_order = HDMI_AUDIO_SAMPLE_LEFT_FIRST;


 audio_format.type = HDMI_AUDIO_TYPE_LPCM;


 audio_format.sample_order = HDMI_AUDIO_SAMPLE_LEFT_FIRST;


 audio_format.en_sig_blk_strt_end = HDMI_AUDIO_BLOCK_SIG_STARTEND_ON;


 hdmi_wp_audio_config_dma(wp, &audio_dma);
 hdmi_wp_audio_config_format(wp, &audio_format);


 hdmi5_core_audio_config(core, &core_cfg);


 hdmi5_core_audio_infoframe_cfg(core, audio->cea);

 return 0;
}
