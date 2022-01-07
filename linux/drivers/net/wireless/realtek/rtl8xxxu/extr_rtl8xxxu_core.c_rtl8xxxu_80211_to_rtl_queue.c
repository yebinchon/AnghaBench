
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int TXDESC_QUEUE_BE ;
 int TXDESC_QUEUE_BK ;
 int TXDESC_QUEUE_VI ;
 int TXDESC_QUEUE_VO ;

__attribute__((used)) static u32 rtl8xxxu_80211_to_rtl_queue(u32 queue)
{
 u32 rtlqueue;

 switch (queue) {
 case 128:
  rtlqueue = TXDESC_QUEUE_VO;
  break;
 case 129:
  rtlqueue = TXDESC_QUEUE_VI;
  break;
 case 131:
  rtlqueue = TXDESC_QUEUE_BE;
  break;
 case 130:
  rtlqueue = TXDESC_QUEUE_BK;
  break;
 default:
  rtlqueue = TXDESC_QUEUE_BE;
 }

 return rtlqueue;
}
