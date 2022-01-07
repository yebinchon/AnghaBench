
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct dsi_packet_sent_handler_data {int * completion; struct platform_device* dsidev; } ;
struct dsi_data {scalar_t__ te_enabled; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSI_VC_IRQ_PACKET_SENT ;
 int DSI_VC_TE (int) ;
 int DSSERR (char*) ;
 int EIO ;
 scalar_t__ REG_GET (struct platform_device*,int ,int,int) ;
 int completion ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_packet_sent_handler_vp ;
 int dsi_register_isr_vc (struct platform_device*,int,int ,struct dsi_packet_sent_handler_data*,int ) ;
 int dsi_unregister_isr_vc (struct platform_device*,int,int ,struct dsi_packet_sent_handler_data*,int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dsi_sync_vc_vp(struct platform_device *dsidev, int channel)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 DECLARE_COMPLETION_ONSTACK(completion);
 struct dsi_packet_sent_handler_data vp_data = {
  .dsidev = dsidev,
  .completion = &completion
 };
 int r = 0;
 u8 bit;

 bit = dsi->te_enabled ? 30 : 31;

 r = dsi_register_isr_vc(dsidev, channel, dsi_packet_sent_handler_vp,
  &vp_data, DSI_VC_IRQ_PACKET_SENT);
 if (r)
  goto err0;


 if (REG_GET(dsidev, DSI_VC_TE(channel), bit, bit)) {
  if (wait_for_completion_timeout(&completion,
    msecs_to_jiffies(10)) == 0) {
   DSSERR("Failed to complete previous frame transfer\n");
   r = -EIO;
   goto err1;
  }
 }

 dsi_unregister_isr_vc(dsidev, channel, dsi_packet_sent_handler_vp,
  &vp_data, DSI_VC_IRQ_PACKET_SENT);

 return 0;
err1:
 dsi_unregister_isr_vc(dsidev, channel, dsi_packet_sent_handler_vp,
  &vp_data, DSI_VC_IRQ_PACKET_SENT);
err0:
 return r;
}
