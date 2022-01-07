
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ input_buffers; } ;
struct cw1200_common {scalar_t__ hw_bufs_used; int device_can_sleep; int hw_type; int bh_error; int hwbus_priv; TYPE_2__* hwbus_ops; TYPE_1__ wsm_caps; int bh_rx; int bh_evt_wq; int bh_suspend; TYPE_3__* hw; int bh_wq; scalar_t__ powersave_enabled; int recent_scan; int pending_frame_id; int * tx_queue; int bh_term; int bh_tx; } ;
typedef int dummy ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_5__ {int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int BUG_ON (int) ;
 scalar_t__ CW1200_BH_RESUME ;
 int CW1200_BH_RESUMED ;
 int CW1200_BH_SUSPENDED ;
 long ERESTARTSYS ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int ST90TDS_CONFIG_REG_ID ;
 int ST90TDS_CONTROL_REG_ID ;
 int ST90TDS_CONT_NEXT_LEN_MASK ;
 unsigned long WSM_CMD_LAST_CHANCE_TIMEOUT ;
 int __cw1200_irq_enable (struct cw1200_common*,int) ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int atomic_xchg (int *,int ) ;
 scalar_t__ cw1200_bh_read_ctrl_reg (struct cw1200_common*,int*) ;
 int cw1200_bh_rx_helper (struct cw1200_common*,int*,int*) ;
 int cw1200_bh_tx_helper (struct cw1200_common*,int*,int*) ;
 scalar_t__ cw1200_queue_get_xmit_timestamp (int *,unsigned long*,int ) ;
 int cw1200_reg_read (struct cw1200_common*,int ,int *,int) ;
 int cw1200_reg_write_16 (struct cw1200_common*,int ,int ) ;
 unsigned long jiffies ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 long wait_event_interruptible (int ,int) ;
 long wait_event_interruptible_timeout (int ,int ,long) ;
 int wake_up (int *) ;
 int wiphy_err (int ,char*,long) ;
 int wiphy_warn (int ,char*,scalar_t__,...) ;

__attribute__((used)) static int cw1200_bh(void *arg)
{
 struct cw1200_common *priv = arg;
 int rx, tx, term, suspend;
 u16 ctrl_reg = 0;
 int tx_allowed;
 int pending_tx = 0;
 int tx_burst;
 long status;
 u32 dummy;
 int ret;

 for (;;) {
  if (!priv->hw_bufs_used &&
      priv->powersave_enabled &&
      !priv->device_can_sleep &&
      !atomic_read(&priv->recent_scan)) {
   status = 1 * HZ;
   pr_debug("[BH] Device wakedown. No data.\n");
   cw1200_reg_write_16(priv, ST90TDS_CONTROL_REG_ID, 0);
   priv->device_can_sleep = 1;
  } else if (priv->hw_bufs_used) {

   status = 1 * HZ;
  } else {
   status = MAX_SCHEDULE_TIMEOUT;
  }


  if ((priv->hw_type != -1) &&
      (atomic_read(&priv->bh_rx) == 0) &&
      (atomic_read(&priv->bh_tx) == 0))
   cw1200_reg_read(priv, ST90TDS_CONFIG_REG_ID,
     &dummy, sizeof(dummy));

  pr_debug("[BH] waiting ...\n");
  status = wait_event_interruptible_timeout(priv->bh_wq, ({
    rx = atomic_xchg(&priv->bh_rx, 0);
    tx = atomic_xchg(&priv->bh_tx, 0);
    term = atomic_xchg(&priv->bh_term, 0);
    suspend = pending_tx ?
     0 : atomic_read(&priv->bh_suspend);
    (rx || tx || term || suspend || priv->bh_error);
   }), status);

  pr_debug("[BH] - rx: %d, tx: %d, term: %d, bh_err: %d, suspend: %d, status: %ld\n",
    rx, tx, term, suspend, priv->bh_error, status);


  if ((status < 0 && status != -ERESTARTSYS) ||
      term || priv->bh_error) {
   break;
  }
  if (!status) {
   unsigned long timestamp = jiffies;
   long timeout;
   int pending = 0;
   int i;


   if (priv->hw_bufs_used && (!rx || !tx)) {
    wiphy_warn(priv->hw->wiphy,
        "Missed interrupt? (%d frames outstanding)\n",
        priv->hw_bufs_used);
    rx = 1;


    for (i = 0; i < 4; ++i)
     pending += cw1200_queue_get_xmit_timestamp(
      &priv->tx_queue[i],
      &timestamp,
      priv->pending_frame_id);





    timeout = timestamp +
     WSM_CMD_LAST_CHANCE_TIMEOUT +
     1 * HZ -
     jiffies;


    if (pending && timeout < 0) {
     wiphy_warn(priv->hw->wiphy,
         "Timeout waiting for TX confirm (%d/%d pending, %ld vs %lu).\n",
         priv->hw_bufs_used, pending,
         timestamp, jiffies);
     break;
    }
   } else if (!priv->device_can_sleep &&
       !atomic_read(&priv->recent_scan)) {
    pr_debug("[BH] Device wakedown. Timeout.\n");
    cw1200_reg_write_16(priv,
          ST90TDS_CONTROL_REG_ID, 0);
    priv->device_can_sleep = 1;
   }
   goto done;
  } else if (suspend) {
   pr_debug("[BH] Device suspend.\n");
   if (priv->powersave_enabled) {
    pr_debug("[BH] Device wakedown. Suspend.\n");
    cw1200_reg_write_16(priv,
          ST90TDS_CONTROL_REG_ID, 0);
    priv->device_can_sleep = 1;
   }

   atomic_set(&priv->bh_suspend, CW1200_BH_SUSPENDED);
   wake_up(&priv->bh_evt_wq);
   status = wait_event_interruptible(priv->bh_wq,
         CW1200_BH_RESUME == atomic_read(&priv->bh_suspend));
   if (status < 0) {
    wiphy_err(priv->hw->wiphy,
       "Failed to wait for resume: %ld.\n",
       status);
    break;
   }
   pr_debug("[BH] Device resume.\n");
   atomic_set(&priv->bh_suspend, CW1200_BH_RESUMED);
   wake_up(&priv->bh_evt_wq);
   atomic_add(1, &priv->bh_rx);
   goto done;
  }

 rx:
  tx += pending_tx;
  pending_tx = 0;

  if (cw1200_bh_read_ctrl_reg(priv, &ctrl_reg))
   break;


  if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK) {
   ret = cw1200_bh_rx_helper(priv, &ctrl_reg, &tx);
   if (ret < 0)
    break;

   if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK) {
    ret = cw1200_bh_rx_helper(priv, &ctrl_reg, &tx);
    if (ret < 0)
     break;
   }
  }

 tx:
  if (tx) {
   tx = 0;

   BUG_ON(priv->hw_bufs_used > priv->wsm_caps.input_buffers);
   tx_burst = priv->wsm_caps.input_buffers - priv->hw_bufs_used;
   tx_allowed = tx_burst > 0;

   if (!tx_allowed) {



    pending_tx = tx;
    goto done_rx;
   }
   ret = cw1200_bh_tx_helper(priv, &pending_tx, &tx_burst);
   if (ret < 0)
    break;
   if (ret > 0)
    tx = ret;


   if (cw1200_bh_read_ctrl_reg(priv, &ctrl_reg))
    break;
  }

 done_rx:
  if (priv->bh_error)
   break;
  if (ctrl_reg & ST90TDS_CONT_NEXT_LEN_MASK)
   goto rx;
  if (tx)
   goto tx;

 done:

  priv->hwbus_ops->lock(priv->hwbus_priv);
  __cw1200_irq_enable(priv, 1);
  priv->hwbus_ops->unlock(priv->hwbus_priv);
 }


 priv->hwbus_ops->lock(priv->hwbus_priv);
 __cw1200_irq_enable(priv, 0);
 priv->hwbus_ops->unlock(priv->hwbus_priv);

 if (!term) {
  pr_err("[BH] Fatal error, exiting.\n");
  priv->bh_error = 1;

 }
 return 0;
}
