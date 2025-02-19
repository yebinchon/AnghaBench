
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pfxlen; int addr; } ;
struct TYPE_7__ {TYPE_2__ a6; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct qeth_l3_ip_event_work {int work; TYPE_4__ addr; struct qeth_card* card; } ;
struct qeth_card {int cmd_wq; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_ifaddr {int prefix_len; int addr; TYPE_1__* idev; } ;
struct TYPE_5__ {struct net_device* dev; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int IPA_IPV6 ;
 unsigned long NETDEV_DOWN ;
 unsigned long NETDEV_UP ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_IP_TYPE_NORMAL ;
 int QETH_PROT_IPV6 ;
 struct qeth_l3_ip_event_work* kmalloc (int,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_add_ip_worker ;
 int qeth_l3_delete_ip_worker ;
 struct qeth_card* qeth_l3_get_card_from_dev (struct net_device*) ;
 int qeth_l3_init_ipaddr (TYPE_4__*,int ,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int qeth_l3_ip6_event(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 struct inet6_ifaddr *ifa = (struct inet6_ifaddr *)ptr;
 struct net_device *dev = ifa->idev->dev;
 struct qeth_l3_ip_event_work *ip_work;
 struct qeth_card *card;

 if (event != NETDEV_UP && event != NETDEV_DOWN)
  return NOTIFY_DONE;

 card = qeth_l3_get_card_from_dev(dev);
 if (!card)
  return NOTIFY_DONE;
 QETH_CARD_TEXT(card, 3, "ip6event");
 if (!qeth_is_supported(card, IPA_IPV6))
  return NOTIFY_DONE;

 ip_work = kmalloc(sizeof(*ip_work), GFP_ATOMIC);
 if (!ip_work)
  return NOTIFY_DONE;

 if (event == NETDEV_UP)
  INIT_WORK(&ip_work->work, qeth_l3_add_ip_worker);
 else
  INIT_WORK(&ip_work->work, qeth_l3_delete_ip_worker);

 ip_work->card = card;
 qeth_l3_init_ipaddr(&ip_work->addr, QETH_IP_TYPE_NORMAL,
       QETH_PROT_IPV6);
 ip_work->addr.u.a6.addr = ifa->addr;
 ip_work->addr.u.a6.pfxlen = ifa->prefix_len;

 queue_work(card->cmd_wq, &ip_work->work);
 return NOTIFY_OK;
}
