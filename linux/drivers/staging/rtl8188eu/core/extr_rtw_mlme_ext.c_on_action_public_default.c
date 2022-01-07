
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct recv_frame {TYPE_1__* pkt; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_2__ {int * data; } ;


 unsigned int _FAIL ;
 unsigned int _SUCCESS ;
 unsigned int rtw_action_public_decache (struct recv_frame*,int ) ;

__attribute__((used)) static unsigned int on_action_public_default(struct recv_frame *precv_frame,
          u8 action)
{
 unsigned int ret = _FAIL;
 u8 *pframe = precv_frame->pkt->data;
 u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);
 u8 token;

 token = frame_body[2];

 if (rtw_action_public_decache(precv_frame, token) == _FAIL)
  goto exit;

 ret = _SUCCESS;

exit:
 return ret;
}
