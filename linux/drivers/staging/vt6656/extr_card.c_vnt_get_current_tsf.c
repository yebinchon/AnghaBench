
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnt_private {int current_tsf; } ;



bool vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf)
{
 *current_tsf = priv->current_tsf;

 return 1;
}
