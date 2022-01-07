
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vnt_private {int basic_rates; unsigned char byTopOFDMBasicRate; unsigned char byTopCCKBasicRate; } ;


 unsigned char RATE_11M ;
 unsigned char RATE_1M ;
 unsigned char RATE_24M ;
 unsigned char RATE_54M ;
 unsigned char RATE_6M ;

void CARDvUpdateBasicTopRate(struct vnt_private *priv)
{
 unsigned char byTopOFDM = RATE_24M, byTopCCK = RATE_1M;
 unsigned char ii;


 for (ii = RATE_54M; ii >= RATE_6M; ii--) {
  if ((priv->basic_rates) & ((u32)(1 << ii))) {
   byTopOFDM = ii;
   break;
  }
 }
 priv->byTopOFDMBasicRate = byTopOFDM;

 for (ii = RATE_11M;; ii--) {
  if ((priv->basic_rates) & ((u32)(1 << ii))) {
   byTopCCK = ii;
   break;
  }
  if (ii == RATE_1M)
   break;
 }
 priv->byTopCCKBasicRate = byTopCCK;
}
