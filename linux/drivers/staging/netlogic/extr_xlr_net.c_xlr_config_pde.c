
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xlr_net_priv {int base_addr; TYPE_1__* nd; } ;
struct TYPE_2__ {int cpu_mask; } ;


 scalar_t__ R_PDE_CLASS_0 ;
 scalar_t__ R_PDE_CLASS_1 ;
 scalar_t__ R_PDE_CLASS_2 ;
 scalar_t__ R_PDE_CLASS_3 ;
 int hweight32 (int ) ;
 int xlr_nae_wreg (int ,scalar_t__,int) ;

__attribute__((used)) static void xlr_config_pde(struct xlr_net_priv *priv)
{
 int i = 0;
 u64 bkt_map = 0;


 for (i = 0; i < hweight32(priv->nd->cpu_mask); i++)
  bkt_map |= (0xff << (i * 8));

 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_0, (bkt_map & 0xffffffff));
 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_0 + 1,
       ((bkt_map >> 32) & 0xffffffff));

 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_1, (bkt_map & 0xffffffff));
 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_1 + 1,
       ((bkt_map >> 32) & 0xffffffff));

 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_2, (bkt_map & 0xffffffff));
 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_2 + 1,
       ((bkt_map >> 32) & 0xffffffff));

 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_3, (bkt_map & 0xffffffff));
 xlr_nae_wreg(priv->base_addr, R_PDE_CLASS_3 + 1,
       ((bkt_map >> 32) & 0xffffffff));
}
