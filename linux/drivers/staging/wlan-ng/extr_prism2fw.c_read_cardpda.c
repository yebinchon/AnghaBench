
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wlandevice {int name; } ;
struct pda {int buf; } ;
struct TYPE_4__ {int data; void* status; int len; int did; } ;
struct TYPE_3__ {int len; scalar_t__ data; void* status; int did; } ;
struct p80211msg_p2req_readpda {int msglen; TYPE_2__ pda; TYPE_1__ resultcode; int devname; int msgcode; } ;
typedef int msg ;


 int DIDMSG_P2REQ_READPDA ;
 int DIDMSG_P2REQ_READPDA_PDA ;
 int DIDMSG_P2REQ_READPDA_RESULTCODE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HFA384x_PDA_LEN_MAX ;
 void* P80211ENUM_msgitem_status_no_value ;
 scalar_t__ P80211ENUM_resultcode_success ;
 int kfree (struct p80211msg_p2req_readpda*) ;
 struct p80211msg_p2req_readpda* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mkpdrlist (struct pda*) ;
 scalar_t__ prism2mgmt_readpda (struct wlandevice*,struct p80211msg_p2req_readpda*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int read_cardpda(struct pda *pda, struct wlandevice *wlandev)
{
 int result = 0;
 struct p80211msg_p2req_readpda *msg;

 msg = kzalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg)
  return -ENOMEM;


 msg->msgcode = DIDMSG_P2REQ_READPDA;
 msg->msglen = sizeof(msg);
 strcpy(msg->devname, wlandev->name);
 msg->pda.did = DIDMSG_P2REQ_READPDA_PDA;
 msg->pda.len = HFA384x_PDA_LEN_MAX;
 msg->pda.status = P80211ENUM_msgitem_status_no_value;
 msg->resultcode.did = DIDMSG_P2REQ_READPDA_RESULTCODE;
 msg->resultcode.len = sizeof(u32);
 msg->resultcode.status = P80211ENUM_msgitem_status_no_value;

 if (prism2mgmt_readpda(wlandev, msg) != 0) {

  result = -1;
 } else if (msg->resultcode.data == P80211ENUM_resultcode_success) {
  memcpy(pda->buf, msg->pda.data, HFA384x_PDA_LEN_MAX);
  result = mkpdrlist(pda);
 } else {

  result = -1;
 }

 kfree(msg);
 return result;
}
