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
struct cdns3_device {int /*<<< orphan*/  gadget_driver; } ;
struct cdns3 {struct cdns3_device* gadget_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*) ; 

__attribute__((used)) static int FUNC1(struct cdns3 *cdns, bool hibernated)
{
	struct cdns3_device *priv_dev = cdns->gadget_dev;

	if (!priv_dev->gadget_driver)
		return 0;

	FUNC0(priv_dev);

	return 0;
}