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
struct iss_device {int /*<<< orphan*/  iss_fck; int /*<<< orphan*/  dev; int /*<<< orphan*/  iss_ctrlclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct iss_device *iss)
{
	int ret;

	ret = FUNC1(iss->iss_fck);
	if (ret) {
		FUNC2(iss->dev, "clk_enable iss_fck failed\n");
		return ret;
	}

	ret = FUNC1(iss->iss_ctrlclk);
	if (ret) {
		FUNC2(iss->dev, "clk_enable iss_ctrlclk failed\n");
		FUNC0(iss->iss_fck);
		return ret;
	}

	return 0;
}