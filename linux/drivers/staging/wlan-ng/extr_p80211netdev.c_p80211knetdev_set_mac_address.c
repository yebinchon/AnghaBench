
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wlandevice {int name; } ;
struct sockaddr {int sa_data; } ;
struct p80211item_uint32 {int len; scalar_t__ data; int status; int did; } ;
struct p80211item_unk392 {int len; void* status; int did; int data; } ;
struct p80211msg_dot11req_mibset {int msglen; int * devname; int msgcode; struct p80211item_uint32 resultcode; struct p80211item_unk392 mibattribute; } ;
struct TYPE_2__ {int data; scalar_t__ len; } ;
struct p80211item_pstr6 {int len; TYPE_1__ data; void* status; int did; } ;
struct net_device {scalar_t__ addr_len; int * dev_addr; scalar_t__ ml_priv; } ;
typedef int dot11req ;


 int DIDMIB_DOT11MAC_OPERATIONTABLE_MACADDRESS ;
 int DIDMSG_DOT11REQ_MIBSET ;
 int DIDMSG_DOT11REQ_MIBSET_MIBATTRIBUTE ;
 int DIDMSG_DOT11REQ_MIBSET_RESULTCODE ;
 int EADDRNOTAVAIL ;
 int EBUSY ;
 scalar_t__ ETH_ALEN ;
 void* P80211ENUM_msgitem_status_data_ok ;
 int P80211ENUM_msgitem_status_no_value ;
 scalar_t__ P80211ENUM_resultcode_success ;
 scalar_t__ WLAN_DEVNAMELEN_MAX ;
 int memcpy (int *,int ,scalar_t__) ;
 int memset (struct p80211msg_dot11req_mibset*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int p80211req_dorequest (scalar_t__,int *) ;

__attribute__((used)) static int p80211knetdev_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *new_addr = addr;
 struct p80211msg_dot11req_mibset dot11req;
 struct p80211item_unk392 *mibattr;
 struct p80211item_pstr6 *macaddr;
 struct p80211item_uint32 *resultcode;
 int result;


 if (netif_running(dev))
  return -EBUSY;


 mibattr = &dot11req.mibattribute;
 macaddr = (struct p80211item_pstr6 *)&mibattr->data;
 resultcode = &dot11req.resultcode;


 memset(&dot11req, 0, sizeof(dot11req));
 dot11req.msgcode = DIDMSG_DOT11REQ_MIBSET;
 dot11req.msglen = sizeof(dot11req);
 memcpy(dot11req.devname,
        ((struct wlandevice *)dev->ml_priv)->name,
        WLAN_DEVNAMELEN_MAX - 1);


 mibattr->did = DIDMSG_DOT11REQ_MIBSET_MIBATTRIBUTE;
 mibattr->status = P80211ENUM_msgitem_status_data_ok;
 mibattr->len = sizeof(mibattr->data);

 macaddr->did = DIDMIB_DOT11MAC_OPERATIONTABLE_MACADDRESS;
 macaddr->status = P80211ENUM_msgitem_status_data_ok;
 macaddr->len = sizeof(macaddr->data);
 macaddr->data.len = ETH_ALEN;
 memcpy(&macaddr->data.data, new_addr->sa_data, ETH_ALEN);


 resultcode->did = DIDMSG_DOT11REQ_MIBSET_RESULTCODE;
 resultcode->status = P80211ENUM_msgitem_status_no_value;
 resultcode->len = sizeof(resultcode->data);
 resultcode->data = 0;


 result = p80211req_dorequest(dev->ml_priv, (u8 *)&dot11req);




 if (result != 0 || resultcode->data != P80211ENUM_resultcode_success) {
  netdev_err(dev, "Low-level driver failed dot11req_mibset(dot11MACAddress).\n");
  result = -EADDRNOTAVAIL;
 } else {

  memcpy(dev->dev_addr, new_addr->sa_data, dev->addr_len);
 }

 return result;
}
