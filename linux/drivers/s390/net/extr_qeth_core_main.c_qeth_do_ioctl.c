
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {TYPE_2__* discipline; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct mii_ioctl_data {int reg_num; int phy_id; int val_out; } ;
struct TYPE_3__ {int ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;
struct TYPE_4__ {int (* do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int IS_OSD (struct qeth_card*) ;
 int IS_OSM (struct qeth_card*) ;
 int IS_OSX (struct qeth_card*) ;
 int IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;





 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int qeth_mdio_read (struct net_device*,int ,int ) ;
 int qeth_query_oat_command (struct qeth_card*,int ) ;
 int qeth_snmp_command (struct qeth_card*,int ) ;
 int stub1 (struct net_device*,struct ifreq*,int) ;

int qeth_do_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct qeth_card *card = dev->ml_priv;
 struct mii_ioctl_data *mii_data;
 int rc = 0;

 if (!card)
  return -ENODEV;

 switch (cmd) {
 case 130:
  rc = qeth_snmp_command(card, rq->ifr_ifru.ifru_data);
  break;
 case 129:
  if ((IS_OSD(card) || IS_OSM(card) || IS_OSX(card)) &&
      !IS_VM_NIC(card))
   return 1;
  return 0;
 case 132:
  mii_data = if_mii(rq);
  mii_data->phy_id = 0;
  break;
 case 131:
  mii_data = if_mii(rq);
  if (mii_data->phy_id != 0)
   rc = -EINVAL;
  else
   mii_data->val_out = qeth_mdio_read(dev,
    mii_data->phy_id, mii_data->reg_num);
  break;
 case 128:
  rc = qeth_query_oat_command(card, rq->ifr_ifru.ifru_data);
  break;
 default:
  if (card->discipline->do_ioctl)
   rc = card->discipline->do_ioctl(dev, rq, cmd);
  else
   rc = -EOPNOTSUPP;
 }
 if (rc)
  QETH_CARD_TEXT_(card, 2, "ioce%x", rc);
 return rc;
}
