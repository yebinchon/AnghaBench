
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int hostwep; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int parm2; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_WEPFLAGS_DISABLE_RXCRYPT ;
 int HFA384x_WEPFLAGS_DISABLE_TXCRYPT ;
 int HOSTWEP_DECRYPT ;
 int HOSTWEP_ENCRYPT ;
 int prism2mib_flag (struct mibrec*,int,struct wlandevice*,struct hfa384x*,struct p80211msg_dot11req_mibset*,void*) ;

__attribute__((used)) static int prism2mib_privacyinvoked(struct mibrec *mib,
        int isget,
        struct wlandevice *wlandev,
        struct hfa384x *hw,
        struct p80211msg_dot11req_mibset *msg,
        void *data)
{
 if (wlandev->hostwep & HOSTWEP_DECRYPT) {
  if (wlandev->hostwep & HOSTWEP_DECRYPT)
   mib->parm2 |= HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
  if (wlandev->hostwep & HOSTWEP_ENCRYPT)
   mib->parm2 |= HFA384x_WEPFLAGS_DISABLE_TXCRYPT;
 }

 return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
}
