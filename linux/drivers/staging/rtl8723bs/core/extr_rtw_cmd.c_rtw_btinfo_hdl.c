
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct btinfo {scalar_t__ cid; int len; } ;
struct adapter {int dummy; } ;


 scalar_t__ BTINFO_BT_AUTO_RPT ;
 scalar_t__ BTINFO_WIFI_FETCH ;
 int hal_btcoex_BtInfoNotify (struct adapter*,scalar_t__,scalar_t__*) ;
 int rtw_warn_on (int) ;

__attribute__((used)) static void rtw_btinfo_hdl(struct adapter *adapter, u8 *buf, u16 buf_len)
{


 struct btinfo *info = (struct btinfo *)buf;
 u8 cmd_idx;
 u8 len;

 cmd_idx = info->cid;

 if (info->len > buf_len-2) {
  rtw_warn_on(1);
  len = buf_len-2;
 } else {
  len = info->len;
 }


 if (cmd_idx == 0x23)
  buf[1] = 0;
 else if (cmd_idx == 0x27)
  buf[1] = 2;
 hal_btcoex_BtInfoNotify(adapter, len+1, &buf[1]);
}
