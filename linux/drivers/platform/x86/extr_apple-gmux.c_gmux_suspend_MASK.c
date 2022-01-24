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
struct pnp_dev {int dummy; } ;
struct device {int dummy; } ;
struct apple_gmux_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct apple_gmux_data*) ; 
 struct apple_gmux_data* FUNC1 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct pnp_dev *pnp = FUNC2(dev);
	struct apple_gmux_data *gmux_data = FUNC1(pnp);

	FUNC0(gmux_data);
	return 0;
}