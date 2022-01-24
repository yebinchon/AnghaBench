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
 int EIO ; 
 int STATUS_FAIL ; 
 scalar_t__ STATUS_REG ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct spear_rtc_config *config)
{
	int ret = 0;
	unsigned long flags;

	FUNC1(&config->lock, flags);
	if ((FUNC0(config->ioaddr + STATUS_REG)) & STATUS_FAIL)
		ret = -EIO;
	FUNC2(&config->lock, flags);

	return ret;
}