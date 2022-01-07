
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct ctcm_priv {TYPE_1__** channel; scalar_t__ fsm; } ;
struct ccwgroup_device {int * cdev; int dev; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 int CTCM_DBF_DEV (int ,struct net_device*,char*) ;
 size_t CTCM_READ ;
 size_t CTCM_WRITE ;
 int ENODEV ;
 int IFF_RUNNING ;
 int SETUP ;
 int ccw_device_set_offline (int ) ;
 int channel_free (TYPE_1__*) ;
 int channel_remove (TYPE_1__*) ;
 int ctcm_close (struct net_device*) ;
 int ctcm_free_netdevice (struct net_device*) ;
 struct ctcm_priv* dev_get_drvdata (int *) ;
 int kfree_fsm (scalar_t__) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ctcm_shutdown_device(struct ccwgroup_device *cgdev)
{
 struct ctcm_priv *priv;
 struct net_device *dev;

 priv = dev_get_drvdata(&cgdev->dev);
 if (!priv)
  return -ENODEV;

 if (priv->channel[CTCM_READ]) {
  dev = priv->channel[CTCM_READ]->netdev;
  CTCM_DBF_DEV(SETUP, dev, "");

  ctcm_close(dev);
  dev->flags &= ~IFF_RUNNING;
  channel_free(priv->channel[CTCM_READ]);
 } else
  dev = ((void*)0);

 if (priv->channel[CTCM_WRITE])
  channel_free(priv->channel[CTCM_WRITE]);

 if (dev) {
  unregister_netdev(dev);
  ctcm_free_netdevice(dev);
 }

 if (priv->fsm)
  kfree_fsm(priv->fsm);

 ccw_device_set_offline(cgdev->cdev[1]);
 ccw_device_set_offline(cgdev->cdev[0]);
 channel_remove(priv->channel[CTCM_READ]);
 channel_remove(priv->channel[CTCM_WRITE]);
 priv->channel[CTCM_READ] = priv->channel[CTCM_WRITE] = ((void*)0);

 return 0;

}
