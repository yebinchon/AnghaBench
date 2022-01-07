
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wlandevice {int dummy; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int parm1; } ;
struct hfa384x {int dummy; } ;


 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_getconfig16 (struct hfa384x*,int ,int *) ;
 int hfa384x_drvr_setconfig16 (struct hfa384x*,int ,int ) ;

__attribute__((used)) static int prism2mib_uint32(struct mibrec *mib,
       int isget,
       struct wlandevice *wlandev,
       struct hfa384x *hw,
       struct p80211msg_dot11req_mibset *msg, void *data)
{
 int result;
 u32 *uint32 = data;
 u8 bytebuf[MIB_TMP_MAXLEN];
 u16 *wordbuf = (u16 *)bytebuf;

 if (isget) {
  result = hfa384x_drvr_getconfig16(hw, mib->parm1, wordbuf);
  *uint32 = *wordbuf;
 } else {
  *wordbuf = *uint32;
  result = hfa384x_drvr_setconfig16(hw, mib->parm1, *wordbuf);
 }

 return result;
}
