
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlandevice {int dummy; } ;
struct p80211pstrd {int len; int data; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int parm2; int parm1; } ;
struct hfa384x {int dummy; } ;


 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_getconfig (struct hfa384x*,int ,int *,int ) ;
 int hfa384x_drvr_setconfig (struct hfa384x*,int ,int *,int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int ) ;
 int prism2mgmt_bytearea2pstr (int *,struct p80211pstrd*,int ) ;

__attribute__((used)) static int prism2mib_bytearea2pstr(struct mibrec *mib,
       int isget,
       struct wlandevice *wlandev,
       struct hfa384x *hw,
       struct p80211msg_dot11req_mibset *msg,
       void *data)
{
 int result;
 struct p80211pstrd *pstr = data;
 u8 bytebuf[MIB_TMP_MAXLEN];

 if (isget) {
  result =
      hfa384x_drvr_getconfig(hw, mib->parm1, bytebuf, mib->parm2);
  prism2mgmt_bytearea2pstr(bytebuf, pstr, mib->parm2);
 } else {
  memset(bytebuf, 0, mib->parm2);
  memcpy(bytebuf, pstr->data, pstr->len);
  result =
      hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, mib->parm2);
 }

 return result;
}
