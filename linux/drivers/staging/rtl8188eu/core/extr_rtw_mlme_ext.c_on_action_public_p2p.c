
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
struct recv_frame {TYPE_1__* pkt; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_2__ {unsigned char* data; } ;


 scalar_t__ _FAIL ;
 unsigned int _SUCCESS ;
 scalar_t__ rtw_action_public_decache (struct recv_frame*,unsigned char) ;

__attribute__((used)) static unsigned int on_action_public_p2p(struct recv_frame *precv_frame)
{
 u8 *pframe = precv_frame->pkt->data;
 u8 *frame_body;
 u8 dialogToken = 0;

 frame_body = (unsigned char *)(pframe + sizeof(struct ieee80211_hdr_3addr));
 dialogToken = frame_body[7];

 if (rtw_action_public_decache(precv_frame, dialogToken) == _FAIL)
  return _FAIL;

 return _SUCCESS;
}
