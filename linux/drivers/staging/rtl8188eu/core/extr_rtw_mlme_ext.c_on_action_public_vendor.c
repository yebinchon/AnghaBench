
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct recv_frame {TYPE_1__* pkt; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_2__ {int * data; } ;


 int P2P_OUI ;
 unsigned int _FAIL ;
 int memcmp (int *,int ,int) ;
 unsigned int on_action_public_p2p (struct recv_frame*) ;

__attribute__((used)) static unsigned int on_action_public_vendor(struct recv_frame *precv_frame)
{
 unsigned int ret = _FAIL;
 u8 *pframe = precv_frame->pkt->data;
 u8 *frame_body = pframe + sizeof(struct ieee80211_hdr_3addr);

 if (!memcmp(frame_body + 2, P2P_OUI, 4))
  ret = on_action_public_p2p(precv_frame);

 return ret;
}
