
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wlandevice {int netdev; } ;
struct TYPE_2__ {int data; } ;
struct p80211msg_dot11req_mibset {TYPE_1__ resultcode; } ;
struct mibrec {int dummy; } ;
struct hfa384x {int dummy; } ;


 int P80211ENUM_resultcode_not_supported ;
 int netdev_warn (int ,char*) ;
 int prism2mib_uint32 (struct mibrec*,int,struct wlandevice*,struct hfa384x*,struct p80211msg_dot11req_mibset*,void*) ;

__attribute__((used)) static int
prism2mib_fragmentationthreshold(struct mibrec *mib,
     int isget,
     struct wlandevice *wlandev,
     struct hfa384x *hw,
     struct p80211msg_dot11req_mibset *msg,
     void *data)
{
 u32 *uint32 = data;

 if (!isget)
  if ((*uint32) % 2) {
   netdev_warn(wlandev->netdev,
        "Attempt to set odd number FragmentationThreshold\n");
   msg->resultcode.data =
       P80211ENUM_resultcode_not_supported;
   return 0;
  }

 return prism2mib_uint32(mib, isget, wlandev, hw, msg, data);
}
