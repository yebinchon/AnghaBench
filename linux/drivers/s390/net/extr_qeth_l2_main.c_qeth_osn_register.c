
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* assist_cb ) (struct net_device*,void*) ;int (* data_cb ) (struct sk_buff*) ;} ;
struct qeth_card {TYPE_1__ osn_info; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int IS_OSN (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int memcpy (int*,unsigned char*,int) ;
 struct qeth_card* qeth_get_card_by_busid (char*) ;
 int sprintf (char*,char*,int) ;

int qeth_osn_register(unsigned char *read_dev_no, struct net_device **dev,
    int (*assist_cb)(struct net_device *, void *),
    int (*data_cb)(struct sk_buff *))
{
 struct qeth_card *card;
 char bus_id[16];
 u16 devno;

 memcpy(&devno, read_dev_no, 2);
 sprintf(bus_id, "0.0.%04x", devno);
 card = qeth_get_card_by_busid(bus_id);
 if (!card || !IS_OSN(card))
  return -ENODEV;
 *dev = card->dev;

 QETH_CARD_TEXT(card, 2, "osnreg");
 if ((assist_cb == ((void*)0)) || (data_cb == ((void*)0)))
  return -EINVAL;
 card->osn_info.assist_cb = assist_cb;
 card->osn_info.data_cb = data_cb;
 return 0;
}
