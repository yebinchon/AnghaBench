
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wsm_reset {int reset_statistics; } ;
struct TYPE_3__ {int in_progress; } ;
struct cw1200_common {int join_pending; int delayed_unjoin; int delayed_link_loss; scalar_t__ join_status; int output_power; int disable_beacon_filter; int setbssparams_done; int conf_mutex; int firmware_ps_mode; int bss_params; int association_mode; int listening; int event_handler; scalar_t__ join_dtim_period; int set_beacon_wakeup_period_work; int update_filtering_work; TYPE_2__* hw; TYPE_1__ scan; int join_timeout; } ;
struct TYPE_4__ {int wiphy; } ;


 scalar_t__ CW1200_JOIN_STATUS_AP ;
 scalar_t__ CW1200_JOIN_STATUS_PASSIVE ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cw1200_cqm_bssloss_sm (struct cw1200_common*,int ,int ,int ) ;
 int cw1200_free_event_queue (struct cw1200_common*) ;
 int cw1200_setup_mac (struct cw1200_common*) ;
 int cw1200_update_filtering (struct cw1200_common*) ;
 int cw1200_update_listening (struct cw1200_common*,int ) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int wiphy_dbg (int ,char*) ;
 int wsm_flush_tx (struct cw1200_common*) ;
 int wsm_keep_alive_period (struct cw1200_common*,int ) ;
 int wsm_reset (struct cw1200_common*,struct wsm_reset*) ;
 int wsm_set_block_ack_policy (struct cw1200_common*,int ,int ) ;
 int wsm_set_output_power (struct cw1200_common*,int) ;

__attribute__((used)) static void cw1200_do_unjoin(struct cw1200_common *priv)
{
 struct wsm_reset reset = {
  .reset_statistics = 1,
 };

 cancel_delayed_work_sync(&priv->join_timeout);

 mutex_lock(&priv->conf_mutex);
 priv->join_pending = 0;

 if (atomic_read(&priv->scan.in_progress)) {
  if (priv->delayed_unjoin)
   wiphy_dbg(priv->hw->wiphy, "Delayed unjoin is already scheduled.\n");
  else
   priv->delayed_unjoin = 1;
  goto done;
 }

 priv->delayed_link_loss = 0;

 if (!priv->join_status)
  goto done;

 if (priv->join_status == CW1200_JOIN_STATUS_AP)
  goto done;

 cancel_work_sync(&priv->update_filtering_work);
 cancel_work_sync(&priv->set_beacon_wakeup_period_work);
 priv->join_status = CW1200_JOIN_STATUS_PASSIVE;


 wsm_flush_tx(priv);
 wsm_keep_alive_period(priv, 0);
 wsm_reset(priv, &reset);
 wsm_set_output_power(priv, priv->output_power * 10);
 priv->join_dtim_period = 0;
 cw1200_setup_mac(priv);
 cw1200_free_event_queue(priv);
 cancel_work_sync(&priv->event_handler);
 cw1200_update_listening(priv, priv->listening);
 cw1200_cqm_bssloss_sm(priv, 0, 0, 0);


 wsm_set_block_ack_policy(priv, 0, 0);

 priv->disable_beacon_filter = 0;
 cw1200_update_filtering(priv);
 memset(&priv->association_mode, 0,
        sizeof(priv->association_mode));
 memset(&priv->bss_params, 0, sizeof(priv->bss_params));
 priv->setbssparams_done = 0;
 memset(&priv->firmware_ps_mode, 0,
        sizeof(priv->firmware_ps_mode));

 pr_debug("[STA] Unjoin completed.\n");

done:
 mutex_unlock(&priv->conf_mutex);
}
