
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct uniphier_pcie_priv {TYPE_1__ pci; scalar_t__ base; } ;


 int PCL_PCLK_ALIVE ;
 scalar_t__ PCL_PIPEMON ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int uniphier_pcie_wait_rc(struct uniphier_pcie_priv *priv)
{
 u32 status;
 int ret;


 ret = readl_poll_timeout(priv->base + PCL_PIPEMON, status,
     status & PCL_PCLK_ALIVE, 100000, 1000000);
 if (ret) {
  dev_err(priv->pci.dev,
   "Failed to initialize controller in RC mode\n");
  return ret;
 }

 return 0;
}
