
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int LINK_WAIT_MAX_RETRIES ;
 int LINK_WAIT_USLEEP_MAX ;
 int LINK_WAIT_USLEEP_MIN ;
 int dev_err (struct device*,char*) ;
 scalar_t__ nwl_phy_link_up (struct nwl_pcie*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int nwl_wait_for_link(struct nwl_pcie *pcie)
{
 struct device *dev = pcie->dev;
 int retries;


 for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
  if (nwl_phy_link_up(pcie))
   return 0;
  usleep_range(LINK_WAIT_USLEEP_MIN, LINK_WAIT_USLEEP_MAX);
 }

 dev_err(dev, "PHY link never came up\n");
 return -ETIMEDOUT;
}
