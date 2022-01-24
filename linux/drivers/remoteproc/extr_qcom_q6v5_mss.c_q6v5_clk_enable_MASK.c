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
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
			   struct clk **clks, int count)
{
	int rc;
	int i;

	for (i = 0; i < count; i++) {
		rc = FUNC1(clks[i]);
		if (rc) {
			FUNC2(dev, "Clock enable failed\n");
			goto err;
		}
	}

	return 0;
err:
	for (i--; i >= 0; i--)
		FUNC0(clks[i]);

	return rc;
}