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
struct cpcap_phy_ddata {int /*<<< orphan*/ * gpio; } ;
typedef  enum cpcap_gpio_mode { ____Placeholder_cpcap_gpio_mode } cpcap_gpio_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct cpcap_phy_ddata *ddata,
				   enum cpcap_gpio_mode mode)
{
	if (!ddata->gpio[0] || !ddata->gpio[1])
		return 0;

	FUNC0(ddata->gpio[0], mode & 1);
	FUNC0(ddata->gpio[1], mode >> 1);

	return 0;
}