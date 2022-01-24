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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct rmobile_pm_domain {scalar_t__ base; TYPE_1__ genpd; int /*<<< orphan*/  bit_shift; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ PSTR ; 
 int /*<<< orphan*/  PSTR_DELAY_US ; 
 int PSTR_RETRIES ; 
 scalar_t__ SWUCR ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rmobile_pm_domain *rmobile_pd)
{
	unsigned int mask = FUNC0(rmobile_pd->bit_shift);
	unsigned int retry_count;
	int ret = 0;

	if (FUNC1(rmobile_pd->base + PSTR) & mask)
		return ret;

	FUNC2(mask, rmobile_pd->base + SWUCR);

	for (retry_count = 2 * PSTR_RETRIES; retry_count; retry_count--) {
		if (!(FUNC1(rmobile_pd->base + SWUCR) & mask))
			break;
		if (retry_count > PSTR_RETRIES)
			FUNC5(PSTR_DELAY_US);
		else
			FUNC3();
	}
	if (!retry_count)
		ret = -EIO;

	FUNC4("%s: Power on, 0x%08x -> PSTR = 0x%08x\n",
		 rmobile_pd->genpd.name, mask,
		 FUNC1(rmobile_pd->base + PSTR));

	return ret;
}