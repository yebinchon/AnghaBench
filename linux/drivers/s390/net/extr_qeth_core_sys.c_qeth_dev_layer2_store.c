
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ layer_enforced; } ;
struct TYPE_4__ {int layer; } ;
struct qeth_card {scalar_t__ state; int discipline_mutex; int gdev; TYPE_3__* discipline; struct net_device* dev; TYPE_2__ info; TYPE_1__ options; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_6__ {int (* setup ) (int ) ;int (* remove ) (int ) ;} ;


 scalar_t__ CARD_STATE_DOWN ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPERM ;
 int QETH_DISCIPLINE_LAYER2 ;
 int QETH_DISCIPLINE_LAYER3 ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct net_device* qeth_clone_netdev (struct net_device*) ;
 int qeth_core_free_discipline (struct qeth_card*) ;
 int qeth_core_load_discipline (struct qeth_card*,int) ;
 int simple_strtoul (char const*,char**,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static ssize_t qeth_dev_layer2_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 struct net_device *ndev;
 char *tmp;
 int i, rc = 0;
 enum qeth_discipline_id newdis;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->discipline_mutex);
 if (card->state != CARD_STATE_DOWN) {
  rc = -EPERM;
  goto out;
 }

 i = simple_strtoul(buf, &tmp, 16);
 switch (i) {
 case 0:
  newdis = QETH_DISCIPLINE_LAYER3;
  break;
 case 1:
  newdis = QETH_DISCIPLINE_LAYER2;
  break;
 default:
  rc = -EINVAL;
  goto out;
 }

 if (card->options.layer == newdis)
  goto out;
 if (card->info.layer_enforced) {

  rc = -EOPNOTSUPP;
  goto out;
 }

 if (card->discipline) {

  ndev = qeth_clone_netdev(card->dev);
  if (!ndev) {
   rc = -ENOMEM;
   goto out;
  }

  card->discipline->remove(card->gdev);
  qeth_core_free_discipline(card);
  free_netdev(card->dev);
  card->dev = ndev;
 }

 rc = qeth_core_load_discipline(card, newdis);
 if (rc)
  goto out;

 rc = card->discipline->setup(card->gdev);
 if (rc)
  qeth_core_free_discipline(card);
out:
 mutex_unlock(&card->discipline_mutex);
 return rc ? rc : count;
}
