
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct vnt_private {unsigned int basic_rates; } ;


 unsigned int RATE_1M ;

__attribute__((used)) static unsigned short CARDwGetCCKControlRate(struct vnt_private *priv,
          unsigned short wRateIdx)
{
 unsigned int ui = (unsigned int)wRateIdx;

 while (ui > RATE_1M) {
  if (priv->basic_rates & ((u32)0x1 << ui))
   return (unsigned short)ui;

  ui--;
 }
 return (unsigned short)RATE_1M;
}
