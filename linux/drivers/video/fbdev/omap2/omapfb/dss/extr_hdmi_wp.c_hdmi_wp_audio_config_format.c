
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_wp_data {int base; } ;
struct hdmi_audio_format {int sample_size; int samples_per_word; int sample_order; int justification; int type; int en_sig_blk_strt_end; int active_chnnls_msk; int stereo_channels; } ;


 int DSSDBG (char*) ;
 int FLD_MOD (int ,int ,int,int) ;
 int HDMI_WP_AUDIO_CFG ;
 scalar_t__ OMAPDSS_VER_OMAP4 ;
 scalar_t__ OMAPDSS_VER_OMAP4430_ES1 ;
 scalar_t__ OMAPDSS_VER_OMAP4430_ES2 ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int ) ;
 scalar_t__ omapdss_get_version () ;

void hdmi_wp_audio_config_format(struct hdmi_wp_data *wp,
  struct hdmi_audio_format *aud_fmt)
{
 u32 r;

 DSSDBG("Enter hdmi_wp_audio_config_format\n");

 r = hdmi_read_reg(wp->base, HDMI_WP_AUDIO_CFG);
 if (omapdss_get_version() == OMAPDSS_VER_OMAP4430_ES1 ||
     omapdss_get_version() == OMAPDSS_VER_OMAP4430_ES2 ||
     omapdss_get_version() == OMAPDSS_VER_OMAP4) {
  r = FLD_MOD(r, aud_fmt->stereo_channels, 26, 24);
  r = FLD_MOD(r, aud_fmt->active_chnnls_msk, 23, 16);
 }
 r = FLD_MOD(r, aud_fmt->en_sig_blk_strt_end, 5, 5);
 r = FLD_MOD(r, aud_fmt->type, 4, 4);
 r = FLD_MOD(r, aud_fmt->justification, 3, 3);
 r = FLD_MOD(r, aud_fmt->sample_order, 2, 2);
 r = FLD_MOD(r, aud_fmt->samples_per_word, 1, 1);
 r = FLD_MOD(r, aud_fmt->sample_size, 0, 0);
 hdmi_write_reg(wp->base, HDMI_WP_AUDIO_CFG, r);
}
