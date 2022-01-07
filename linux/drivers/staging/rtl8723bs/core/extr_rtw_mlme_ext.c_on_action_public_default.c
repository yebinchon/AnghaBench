
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* rx_data; struct adapter* adapter; int len; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int uint ;
typedef int u8 ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct adapter {int dummy; } ;


 unsigned int _FAIL ;
 unsigned int _SUCCESS ;
 char* action_public_str (int) ;
 unsigned int rtw_action_public_decache (union recv_frame*,int) ;
 int rtw_cfg80211_rx_action (struct adapter*,int*,int ,char*) ;
 scalar_t__ sprintf (char*,char*,char*,int) ;

__attribute__((used)) static unsigned int on_action_public_default(union recv_frame *precv_frame, u8 action)
{
 unsigned int ret = _FAIL;
 u8 *pframe = precv_frame->u.hdr.rx_data;
 uint frame_len = precv_frame->u.hdr.len;
 u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);
 u8 token;
 struct adapter *adapter = precv_frame->u.hdr.adapter;
 int cnt = 0;
 char msg[64];

 token = frame_body[2];

 if (rtw_action_public_decache(precv_frame, token) == _FAIL)
  goto exit;

 cnt += sprintf((msg+cnt), "%s(token:%u)", action_public_str(action), token);
 rtw_cfg80211_rx_action(adapter, pframe, frame_len, msg);

 ret = _SUCCESS;

exit:
 return ret;
}
