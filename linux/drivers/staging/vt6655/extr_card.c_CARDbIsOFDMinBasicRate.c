
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vnt_private {int basic_rates; } ;


 scalar_t__ BIT (int) ;
 int RATE_54M ;
 int RATE_6M ;

bool CARDbIsOFDMinBasicRate(struct vnt_private *priv)
{
 int ii;

 for (ii = RATE_54M; ii >= RATE_6M; ii--) {
  if ((priv->basic_rates) & ((u32)BIT(ii)))
   return 1;
 }
 return 0;
}
