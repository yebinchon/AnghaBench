
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vnt_private {scalar_t__ bb_type; } ;


 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11B ;
 int PK_TYPE_11GA ;
 int PK_TYPE_11GB ;
 scalar_t__ vnt_ofdm_min_rate (struct vnt_private*) ;

u8 vnt_get_pkt_type(struct vnt_private *priv)
{
 if (priv->bb_type == BB_TYPE_11A || priv->bb_type == BB_TYPE_11B)
  return (u8)priv->bb_type;
 else if (vnt_ofdm_min_rate(priv))
  return PK_TYPE_11GA;
 return PK_TYPE_11GB;
}
