
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dsi_packet_sent_handler_data {int completion; int dsidev; } ;
struct dsi_data {int update_channel; scalar_t__ te_enabled; } ;


 int DSI_VC_TE (int const) ;
 scalar_t__ REG_GET (int ,int ,int,int) ;
 int complete (int ) ;
 struct dsi_data* dsi_get_dsidrv_data (int ) ;

__attribute__((used)) static void dsi_packet_sent_handler_vp(void *data, u32 mask)
{
 struct dsi_packet_sent_handler_data *vp_data =
  (struct dsi_packet_sent_handler_data *) data;
 struct dsi_data *dsi = dsi_get_dsidrv_data(vp_data->dsidev);
 const int channel = dsi->update_channel;
 u8 bit = dsi->te_enabled ? 30 : 31;

 if (REG_GET(vp_data->dsidev, DSI_VC_TE(channel), bit, bit) == 0)
  complete(vp_data->completion);
}
