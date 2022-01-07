
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int operation_mode; } ;
struct iw_statistics {int status; } ;
struct ks_wlan_private {scalar_t__ dev_state; int net_dev; int confirm_wait; TYPE_1__ reg; struct iw_statistics wstats; } ;
struct TYPE_5__ {scalar_t__ expires; } ;


 scalar_t__ DEVICE_STATE_READY ;
 int EBUSY ;
 int EPERM ;
 int HZ ;
 int SME_PHY_INFO_REQUEST ;
 int add_timer (TYPE_2__*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int in_interrupt () ;
 scalar_t__ jiffies ;
 int netdev_dbg (int ,char*,...) ;
 int update_phyinfo ;
 TYPE_2__ update_phyinfo_timer ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static
int ks_wlan_update_phy_information(struct ks_wlan_private *priv)
{
 struct iw_statistics *wstats = &priv->wstats;

 netdev_dbg(priv->net_dev, "in_interrupt = %ld\n", in_interrupt());

 if (priv->dev_state < DEVICE_STATE_READY)
  return -EBUSY;

 if (atomic_read(&update_phyinfo))
  return -EPERM;


 wstats->status = priv->reg.operation_mode;


 hostif_sme_enqueue(priv, SME_PHY_INFO_REQUEST);


 if (!wait_for_completion_interruptible_timeout
     (&priv->confirm_wait, HZ / 2)) {
  netdev_dbg(priv->net_dev, "wait time out!!\n");
 }

 atomic_inc(&update_phyinfo);
 update_phyinfo_timer.expires = jiffies + HZ;
 add_timer(&update_phyinfo_timer);

 return 0;
}
