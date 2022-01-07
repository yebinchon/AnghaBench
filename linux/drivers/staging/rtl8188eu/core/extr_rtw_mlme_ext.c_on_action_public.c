
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct recv_frame {TYPE_1__* pkt; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct adapter {int eeprompriv; } ;
struct TYPE_2__ {scalar_t__* data; } ;



 int ETH_ALEN ;
 int GetAddr1Ptr (scalar_t__*) ;
 scalar_t__ RTW_WLAN_CATEGORY_PUBLIC ;
 unsigned int _FAIL ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int myid (int *) ;
 unsigned int on_action_public_default (struct recv_frame*,scalar_t__) ;
 unsigned int on_action_public_vendor (struct recv_frame*) ;

__attribute__((used)) static unsigned int on_action_public(struct adapter *padapter,
         struct recv_frame *precv_frame)
{
 unsigned int ret = _FAIL;
 u8 *pframe = precv_frame->pkt->data;
 u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);
 u8 category, action;


 if (memcmp(myid(&padapter->eeprompriv), GetAddr1Ptr(pframe), ETH_ALEN))
  goto exit;

 category = frame_body[0];
 if (category != RTW_WLAN_CATEGORY_PUBLIC)
  goto exit;

 action = frame_body[1];
 switch (action) {
 case 128:
  ret = on_action_public_vendor(precv_frame);
  break;
 default:
  ret = on_action_public_default(precv_frame, action);
  break;
 }

exit:
 return ret;
}
