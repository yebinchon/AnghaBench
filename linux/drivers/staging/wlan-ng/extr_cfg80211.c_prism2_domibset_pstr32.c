
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlandevice {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct p80211msg_dot11req_mibset {int msgcode; TYPE_1__ mibattribute; } ;
struct TYPE_4__ {int data; int len; } ;
struct p80211item_pstr32 {TYPE_2__ data; int did; } ;


 int DIDMSG_DOT11REQ_MIBSET ;
 int memcpy (int ,int const*,int ) ;
 int p80211req_dorequest (struct wlandevice*,int *) ;

__attribute__((used)) static int prism2_domibset_pstr32(struct wlandevice *wlandev,
      u32 did, u8 len, const u8 *data)
{
 struct p80211msg_dot11req_mibset msg;
 struct p80211item_pstr32 *mibitem =
   (struct p80211item_pstr32 *)&msg.mibattribute.data;

 msg.msgcode = DIDMSG_DOT11REQ_MIBSET;
 mibitem->did = did;
 mibitem->data.len = len;
 memcpy(mibitem->data.data, data, len);

 return p80211req_dorequest(wlandev, (u8 *)&msg);
}
