#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct uniphier_pcie_priv {TYPE_1__ pci; scalar_t__ base; } ;

/* Variables and functions */
 int PCL_PCLK_ALIVE ; 
 scalar_t__ PCL_PIPEMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct uniphier_pcie_priv *priv)
{
	u32 status;
	int ret;

	/* wait PIPE clock */
	ret = FUNC1(priv->base + PCL_PIPEMON, status,
				 status & PCL_PCLK_ALIVE, 100000, 1000000);
	if (ret) {
		FUNC0(priv->pci.dev,
			"Failed to initialize controller in RC mode\n");
		return ret;
	}

	return 0;
}