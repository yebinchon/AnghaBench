#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cdns3_endpoint {int /*<<< orphan*/ * trb_pool; int /*<<< orphan*/  trb_pool_dma; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  sysdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cdns3_endpoint *priv_ep)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

	if (priv_ep->trb_pool) {
		FUNC1(priv_dev->sysdev,
				  FUNC0(priv_ep),
				  priv_ep->trb_pool, priv_ep->trb_pool_dma);
		priv_ep->trb_pool = NULL;
	}
}