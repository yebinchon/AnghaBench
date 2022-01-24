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
typedef  int u32 ;
struct img_spfi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SPFI_INTERRUPT_ALLDONETRIG ; 
 int /*<<< orphan*/  SPFI_INTERRUPT_CLEAR ; 
 int /*<<< orphan*/  SPFI_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (struct img_spfi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct img_spfi*) ; 
 int /*<<< orphan*/  FUNC5 (struct img_spfi*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct img_spfi *spfi)
{
	unsigned long timeout = jiffies + FUNC2(50);

	while (FUNC6(jiffies, timeout)) {
		u32 status = FUNC3(spfi, SPFI_INTERRUPT_STATUS);

		if (status & SPFI_INTERRUPT_ALLDONETRIG) {
			FUNC5(spfi, SPFI_INTERRUPT_ALLDONETRIG,
				    SPFI_INTERRUPT_CLEAR);
			return 0;
		}
		FUNC0();
	}

	FUNC1(spfi->dev, "Timed out waiting for transaction to complete\n");
	FUNC4(spfi);

	return -ETIMEDOUT;
}