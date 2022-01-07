
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_private {int basic_rates; } ;


 int RATE_1M ;

__attribute__((used)) static u16 vnt_get_cck_rate(struct vnt_private *priv, u16 rate_idx)
{
 u16 ui = rate_idx;

 while (ui > RATE_1M) {
  if (priv->basic_rates & (1 << ui))
   return ui;
  ui--;
 }

 return RATE_1M;
}
