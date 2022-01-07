
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int base_addr; int port_id; } ;
struct platform_device {int dummy; } ;


 int BYTE_OFFSET ;
 int O_DESC_PACK_CTRL__BYTEOFFSET ;
 int O_DESC_PACK_CTRL__MAXENTRY ;
 int O_DESC_PACK_CTRL__REGULARSIZE ;
 int O_INTMASK__ABORT ;
 int O_INTMASK__MDINT ;
 int O_INTMASK__P2PSPILLECC ;
 int O_INTMASK__TAGFULL ;
 int O_INTMASK__TXFETCHERROR ;
 int O_INTMASK__TXILLEGAL ;
 int O_INTMASK__UNDERRUN ;
 int O_STATCTRL__CLRCNT ;
 int R_CORECONTROL ;
 int R_DESC_PACK_CTRL ;
 int R_INTMASK ;
 int R_MAC_CONFIG_2 ;
 int R_STATCTRL ;
 int pr_info (char*,int ) ;
 int xlr_nae_wreg (int ,int ,int) ;
 int xlr_port_disable (struct xlr_net_priv*) ;
 int xlr_port_enable (struct xlr_net_priv*) ;
 int xlr_reg_update (int ,int ,int,int) ;
 int xlr_setup_mdio (struct xlr_net_priv*,struct platform_device*) ;

__attribute__((used)) static int xlr_gmac_init(struct xlr_net_priv *priv,
    struct platform_device *pdev)
{
 int ret;

 pr_info("Initializing the gmac%d\n", priv->port_id);

 xlr_port_disable(priv);

 xlr_nae_wreg(priv->base_addr, R_DESC_PACK_CTRL,
       (1 << O_DESC_PACK_CTRL__MAXENTRY) |
       (BYTE_OFFSET << O_DESC_PACK_CTRL__BYTEOFFSET) |
       (1600 << O_DESC_PACK_CTRL__REGULARSIZE));

 ret = xlr_setup_mdio(priv, pdev);
 if (ret)
  return ret;
 xlr_port_enable(priv);


 xlr_nae_wreg(priv->base_addr, R_MAC_CONFIG_2, 0x7217);

 xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x02);

 xlr_nae_wreg(priv->base_addr, R_INTMASK, (1 << O_INTMASK__TXILLEGAL) |
       (1 << O_INTMASK__MDINT) | (1 << O_INTMASK__TXFETCHERROR) |
       (1 << O_INTMASK__P2PSPILLECC) | (1 << O_INTMASK__TAGFULL) |
       (1 << O_INTMASK__UNDERRUN) | (1 << O_INTMASK__ABORT));


 xlr_reg_update(priv->base_addr, R_STATCTRL, 0, 1 << O_STATCTRL__CLRCNT);
 xlr_reg_update(priv->base_addr, R_STATCTRL, 1 << 2, 1 << 2);
 return 0;
}
