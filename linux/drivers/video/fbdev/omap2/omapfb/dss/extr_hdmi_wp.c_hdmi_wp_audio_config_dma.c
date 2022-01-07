
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;
struct hdmi_audio_dma {int fifo_threshold; int mode; int block_size; int transfer_size; } ;


 int DSSDBG (char*) ;
 int FLD_MOD (int ,int ,int,int) ;
 int HDMI_WP_AUDIO_CFG2 ;
 int HDMI_WP_AUDIO_CTRL ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int ) ;

void hdmi_wp_audio_config_dma(struct hdmi_wp_data *wp,
  struct hdmi_audio_dma *aud_dma)
{
 u32 r;

 DSSDBG("Enter hdmi_wp_audio_config_dma\n");

 r = hdmi_read_reg(wp->base, HDMI_WP_AUDIO_CFG2);
 r = FLD_MOD(r, aud_dma->transfer_size, 15, 8);
 r = FLD_MOD(r, aud_dma->block_size, 7, 0);
 hdmi_write_reg(wp->base, HDMI_WP_AUDIO_CFG2, r);

 r = hdmi_read_reg(wp->base, HDMI_WP_AUDIO_CTRL);
 r = FLD_MOD(r, aud_dma->mode, 9, 9);
 r = FLD_MOD(r, aud_dma->fifo_threshold, 8, 0);
 hdmi_write_reg(wp->base, HDMI_WP_AUDIO_CTRL, r);
}
