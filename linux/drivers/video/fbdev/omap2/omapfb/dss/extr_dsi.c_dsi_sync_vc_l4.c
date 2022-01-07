
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_packet_sent_handler_data {int * completion; struct platform_device* dsidev; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DSI_VC_CTRL (int) ;
 int DSI_VC_IRQ_PACKET_SENT ;
 int DSSERR (char*) ;
 int EIO ;
 scalar_t__ REG_GET (struct platform_device*,int ,int,int) ;
 int completion ;
 int dsi_packet_sent_handler_l4 ;
 int dsi_register_isr_vc (struct platform_device*,int,int ,struct dsi_packet_sent_handler_data*,int ) ;
 int dsi_unregister_isr_vc (struct platform_device*,int,int ,struct dsi_packet_sent_handler_data*,int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int dsi_sync_vc_l4(struct platform_device *dsidev, int channel)
{
 DECLARE_COMPLETION_ONSTACK(completion);
 struct dsi_packet_sent_handler_data l4_data = {
  .dsidev = dsidev,
  .completion = &completion
 };
 int r = 0;

 r = dsi_register_isr_vc(dsidev, channel, dsi_packet_sent_handler_l4,
  &l4_data, DSI_VC_IRQ_PACKET_SENT);
 if (r)
  goto err0;


 if (REG_GET(dsidev, DSI_VC_CTRL(channel), 5, 5)) {
  if (wait_for_completion_timeout(&completion,
    msecs_to_jiffies(10)) == 0) {
   DSSERR("Failed to complete previous l4 transfer\n");
   r = -EIO;
   goto err1;
  }
 }

 dsi_unregister_isr_vc(dsidev, channel, dsi_packet_sent_handler_l4,
  &l4_data, DSI_VC_IRQ_PACKET_SENT);

 return 0;
err1:
 dsi_unregister_isr_vc(dsidev, channel, dsi_packet_sent_handler_l4,
  &l4_data, DSI_VC_IRQ_PACKET_SENT);
err0:
 return r;
}
