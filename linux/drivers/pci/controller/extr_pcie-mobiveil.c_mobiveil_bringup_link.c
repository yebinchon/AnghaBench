
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mobiveil_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int LINK_WAIT_MAX ;
 int LINK_WAIT_MAX_RETRIES ;
 int LINK_WAIT_MIN ;
 int dev_err (int *,char*) ;
 scalar_t__ mobiveil_pcie_link_up (struct mobiveil_pcie*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
{
 int retries;


 for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
  if (mobiveil_pcie_link_up(pcie))
   return 0;

  usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
 }

 dev_err(&pcie->pdev->dev, "link never came up\n");

 return -ETIMEDOUT;
}
