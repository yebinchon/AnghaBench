
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_thermal_priv {scalar_t__ base; } ;


 int CMD_ON ;
 scalar_t__ TEMPSI_CFG ;
 scalar_t__ TEMPSI_CMD ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tango_thermal_init(struct tango_thermal_priv *priv)
{
 writel(0, priv->base + TEMPSI_CFG);
 writel(CMD_ON, priv->base + TEMPSI_CMD);
}
