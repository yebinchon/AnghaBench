
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct wlandevice {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct p80211msg_dot11req_mibset {int msgcode; TYPE_1__ mibattribute; } ;
struct p80211item_uint32 {void* data; void* did; } ;


 int DIDMSG_DOT11REQ_MIBSET ;
 int p80211req_dorequest (struct wlandevice*,int *) ;

__attribute__((used)) static int prism2_domibset_uint32(struct wlandevice *wlandev,
      u32 did, u32 data)
{
 struct p80211msg_dot11req_mibset msg;
 struct p80211item_uint32 *mibitem =
   (struct p80211item_uint32 *)&msg.mibattribute.data;

 msg.msgcode = DIDMSG_DOT11REQ_MIBSET;
 mibitem->did = did;
 mibitem->data = data;

 return p80211req_dorequest(wlandev, (u8 *)&msg);
}
