
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int notifier_call; } ;
struct miscdevice {TYPE_2__ notifier; int wait_event; int events; struct cros_ec_dev* ec_dev; int parent; } ;
struct inode {int dummy; } ;
struct file {struct miscdevice* private_data; } ;
struct cros_ec_dev {int dev; TYPE_1__* ec_dev; } ;
struct chardev_priv {TYPE_2__ notifier; int wait_event; int events; struct cros_ec_dev* ec_dev; int parent; } ;
struct TYPE_3__ {int event_notifier; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int blocking_notifier_chain_register (int *,TYPE_2__*) ;
 int cros_ec_chardev_mkbp_event ;
 int dev_err (int ,char*) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct miscdevice*) ;
 struct miscdevice* kzalloc (int,int ) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int cros_ec_chardev_open(struct inode *inode, struct file *filp)
{
 struct miscdevice *mdev = filp->private_data;
 struct cros_ec_dev *ec_dev = dev_get_drvdata(mdev->parent);
 struct chardev_priv *priv;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->ec_dev = ec_dev;
 filp->private_data = priv;
 INIT_LIST_HEAD(&priv->events);
 init_waitqueue_head(&priv->wait_event);
 nonseekable_open(inode, filp);

 priv->notifier.notifier_call = cros_ec_chardev_mkbp_event;
 ret = blocking_notifier_chain_register(&ec_dev->ec_dev->event_notifier,
            &priv->notifier);
 if (ret) {
  dev_err(ec_dev->dev, "failed to register event notifier\n");
  kfree(priv);
 }

 return ret;
}
