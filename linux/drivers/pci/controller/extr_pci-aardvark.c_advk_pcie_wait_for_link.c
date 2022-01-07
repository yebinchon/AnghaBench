
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct advk_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETIMEDOUT ;
 int LINK_WAIT_MAX_RETRIES ;
 int LINK_WAIT_USLEEP_MAX ;
 int LINK_WAIT_USLEEP_MIN ;
 scalar_t__ advk_pcie_link_up (struct advk_pcie*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int advk_pcie_wait_for_link(struct advk_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 int retries;


 for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
  if (advk_pcie_link_up(pcie)) {
   dev_info(dev, "link up\n");
   return 0;
  }

  usleep_range(LINK_WAIT_USLEEP_MIN, LINK_WAIT_USLEEP_MAX);
 }

 dev_err(dev, "link never came up\n");
 return -ETIMEDOUT;
}
