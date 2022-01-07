
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _adapter {int dummy; } ;


 int HT_MPDU_FAIL_BIT ;
 int OFDM_PPDU_BIT ;
 int RXERR_RPT ;
 int r8712_write32 (struct _adapter*,int ,int) ;

void r8712_ResetPhyRxPktCount(struct _adapter *pAdapter)
{
 u32 i, phyrx_set = 0;

 for (i = OFDM_PPDU_BIT; i <= HT_MPDU_FAIL_BIT; i++) {
  phyrx_set = 0;
  phyrx_set |= (i << 28);
  phyrx_set |= 0x08000000;
  r8712_write32(pAdapter, RXERR_RPT, phyrx_set);
 }
}
