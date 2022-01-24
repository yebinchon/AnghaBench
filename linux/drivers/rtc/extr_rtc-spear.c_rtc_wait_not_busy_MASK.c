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
struct spear_rtc_config {int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;

/* Variables and functions */
 int STATUS_BUSY ; 
 scalar_t__ STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct spear_rtc_config *config)
{
	int status, count = 0;
	unsigned long flags;

	/* Assuming BUSY may stay active for 80 msec) */
	for (count = 0; count < 80; count++) {
		FUNC2(&config->lock, flags);
		status = FUNC1(config->ioaddr + STATUS_REG);
		FUNC3(&config->lock, flags);
		if ((status & STATUS_BUSY) == 0)
			break;
		/* check status busy, after each msec */
		FUNC0(1);
	}
}