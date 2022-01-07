
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_lcd_mgr_config {int lcden_sig_polarity; int video_port_width; int clock_info; int fifohandcheck; int stallmode; int io_pad_mode; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int dispc_lcd_enable_signal_polarity (int ) ;
 int dispc_mgr_enable_fifohandcheck (int,int ) ;
 int dispc_mgr_enable_stallmode (int,int ) ;
 int dispc_mgr_set_clock_div (int,int *) ;
 int dispc_mgr_set_io_pad_mode (int ) ;
 int dispc_mgr_set_lcd_type_tft (int) ;
 int dispc_mgr_set_tft_data_lines (int,int ) ;

void dispc_mgr_set_lcd_config(enum omap_channel channel,
  const struct dss_lcd_mgr_config *config)
{
 dispc_mgr_set_io_pad_mode(config->io_pad_mode);

 dispc_mgr_enable_stallmode(channel, config->stallmode);
 dispc_mgr_enable_fifohandcheck(channel, config->fifohandcheck);

 dispc_mgr_set_clock_div(channel, &config->clock_info);

 dispc_mgr_set_tft_data_lines(channel, config->video_port_width);

 dispc_lcd_enable_signal_polarity(config->lcden_sig_polarity);

 dispc_mgr_set_lcd_type_tft(channel);
}
