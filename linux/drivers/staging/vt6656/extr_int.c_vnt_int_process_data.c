
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int in_use; scalar_t__ data_buf; } ;
struct ieee80211_low_level_stats {int dot11FCSErrorCount; int dot11ACKFailureCount; int dot11RTSFailureCount; int dot11RTSSuccessCount; } ;
struct vnt_private {scalar_t__ op_mode; int wake_up_count; TYPE_4__ int_buf; int current_tsf; TYPE_3__* hw; TYPE_1__* usb; struct ieee80211_low_level_stats low_stats; } ;
struct vnt_interrupt_data {int tsr0; int tsr1; int tsr2; int tsr3; int isr0; scalar_t__ fcs_err; scalar_t__ ack_fail; scalar_t__ rts_fail; scalar_t__ rts_success; int tsf; int pkt3; int pkt2; int pkt1; int pkt0; } ;
struct TYPE_6__ {int flags; int listen_interval; } ;
struct TYPE_7__ {TYPE_2__ conf; } ;
struct TYPE_5__ {int dev; } ;


 int IEEE80211_CONF_PS ;
 int ISR_BNTX ;
 int ISR_TBTT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int TSR_VALID ;
 int WLAN_CMD_BECON_SEND ;
 int WLAN_CMD_TBTT_WAKEUP ;
 int dev_dbg (int *,char*) ;
 int le64_to_cpu (int ) ;
 int vnt_int_report_rate (struct vnt_private*,int ,int) ;
 int vnt_schedule_command (struct vnt_private*,int ) ;

void vnt_int_process_data(struct vnt_private *priv)
{
 struct vnt_interrupt_data *int_data;
 struct ieee80211_low_level_stats *low_stats = &priv->low_stats;

 dev_dbg(&priv->usb->dev, "---->s_nsInterruptProcessData\n");

 int_data = (struct vnt_interrupt_data *)priv->int_buf.data_buf;

 if (int_data->tsr0 & TSR_VALID)
  vnt_int_report_rate(priv, int_data->pkt0, int_data->tsr0);

 if (int_data->tsr1 & TSR_VALID)
  vnt_int_report_rate(priv, int_data->pkt1, int_data->tsr1);

 if (int_data->tsr2 & TSR_VALID)
  vnt_int_report_rate(priv, int_data->pkt2, int_data->tsr2);

 if (int_data->tsr3 & TSR_VALID)
  vnt_int_report_rate(priv, int_data->pkt3, int_data->tsr3);

 if (int_data->isr0 != 0) {
  if (int_data->isr0 & ISR_BNTX &&
      priv->op_mode == NL80211_IFTYPE_AP)
   vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);

  if (int_data->isr0 & ISR_TBTT &&
      priv->hw->conf.flags & IEEE80211_CONF_PS) {
   if (!priv->wake_up_count)
    priv->wake_up_count =
     priv->hw->conf.listen_interval;

   --priv->wake_up_count;


   if (priv->wake_up_count == 1)
    vnt_schedule_command(priv,
           WLAN_CMD_TBTT_WAKEUP);
  }
  priv->current_tsf = le64_to_cpu(int_data->tsf);

  low_stats->dot11RTSSuccessCount += int_data->rts_success;
  low_stats->dot11RTSFailureCount += int_data->rts_fail;
  low_stats->dot11ACKFailureCount += int_data->ack_fail;
  low_stats->dot11FCSErrorCount += int_data->fcs_err;
 }

 priv->int_buf.in_use = 0;
}
