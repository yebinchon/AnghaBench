
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_net_priv {int base_addr; } ;


 scalar_t__ R_L2TYPE_0 ;
 scalar_t__ R_L3CTABLE ;
 scalar_t__ R_L4CTABLE ;
 scalar_t__ R_PARSERCONFIGREG ;
 int xlr_config_translate_table (struct xlr_net_priv*) ;
 int xlr_nae_wreg (int ,scalar_t__,int) ;

__attribute__((used)) static void xlr_config_parser(struct xlr_net_priv *priv)
{
 u32 val;


 xlr_nae_wreg(priv->base_addr, R_L2TYPE_0, 0x01);


 xlr_nae_wreg(priv->base_addr, R_PARSERCONFIGREG,
       ((0x7f << 8) | (1 << 1)));



 xlr_nae_wreg(priv->base_addr, R_L3CTABLE,
       (9 << 20) | (1 << 19) | (1 << 18) | (0x01 << 16) |
       (0x0800 << 0));
 xlr_nae_wreg(priv->base_addr, R_L3CTABLE + 1,
       (9 << 25) | (1 << 21) | (12 << 14) | (4 << 10) |
       (16 << 4) | 4);


 xlr_nae_wreg(priv->base_addr, R_L4CTABLE, 6);
 xlr_nae_wreg(priv->base_addr, R_L4CTABLE + 2, 17);
 val = ((0 << 21) | (2 << 17) | (2 << 11) | (2 << 7));
 xlr_nae_wreg(priv->base_addr, R_L4CTABLE + 1, val);
 xlr_nae_wreg(priv->base_addr, R_L4CTABLE + 3, val);

 xlr_config_translate_table(priv);
}
