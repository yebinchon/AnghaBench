
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct _adapter {int dummy; } ;


 int CCK_MPDU_FAIL_BIT ;
 scalar_t__ GetPhyRxPktCounts (struct _adapter*,int ) ;
 int HT_MPDU_FAIL_BIT ;
 int OFDM_MPDU_FAIL_BIT ;

u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter)
{
 u32 OFDM_cnt = GetPhyRxPktCounts(pAdapter, OFDM_MPDU_FAIL_BIT);
 u32 CCK_cnt = GetPhyRxPktCounts(pAdapter, CCK_MPDU_FAIL_BIT);
 u32 HT_cnt = GetPhyRxPktCounts(pAdapter, HT_MPDU_FAIL_BIT);

 return OFDM_cnt + CCK_cnt + HT_cnt;
}
