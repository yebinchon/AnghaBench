
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlandevice {int hostwep; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {int data; } ;
struct p80211msg_lnxreq_hostwep {TYPE_1__ encrypt; TYPE_2__ decrypt; } ;
struct p80211msg_dot11req_mibget {int dummy; } ;
struct p80211msg {int msgcode; } ;





 int HOSTWEP_DECRYPT ;
 int HOSTWEP_ENCRYPT ;
 int P80211ENUM_truth_true ;
 int p80211req_mibset_mibget (struct wlandevice*,struct p80211msg_dot11req_mibget*,int) ;

__attribute__((used)) static void p80211req_handlemsg(struct wlandevice *wlandev,
    struct p80211msg *msg)
{
 switch (msg->msgcode) {
 case 128: {
  struct p80211msg_lnxreq_hostwep *req =
   (struct p80211msg_lnxreq_hostwep *)msg;
  wlandev->hostwep &=
    ~(HOSTWEP_DECRYPT | HOSTWEP_ENCRYPT);
  if (req->decrypt.data == P80211ENUM_truth_true)
   wlandev->hostwep |= HOSTWEP_DECRYPT;
  if (req->encrypt.data == P80211ENUM_truth_true)
   wlandev->hostwep |= HOSTWEP_ENCRYPT;

  break;
 }
 case 130:
 case 129: {
  int isget = (msg->msgcode == 130);
  struct p80211msg_dot11req_mibget *mib_msg =
   (struct p80211msg_dot11req_mibget *)msg;
  p80211req_mibset_mibget(wlandev, mib_msg, isget);
  break;
 }
 }
}
