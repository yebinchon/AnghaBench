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
typedef  int u64 ;
typedef  int u32 ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  TW_Device_Extension ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(TW_Device_Extension *tw_dev, int request_id, int seconds)
{
	unsigned long before;
	dma_addr_t mfa;
	u32 regh, regl;
	u32 response;
	int retval = 1;
	int found = 0;

	before = jiffies;

	while (!found) {
		if (sizeof(dma_addr_t) > 4) {
			regh = FUNC4(FUNC0(tw_dev));
			regl = FUNC4(FUNC1(tw_dev));
			mfa = ((u64)regh << 32) | regl;
		} else
			mfa = FUNC4(FUNC1(tw_dev));

		response = (u32)mfa;

		if (FUNC2(response) == request_id)
			found = 1;

		if (FUNC5(jiffies, before + HZ * seconds))
			goto out;

		FUNC3(50);
	}
	retval = 0;
out: 
	return retval;
}