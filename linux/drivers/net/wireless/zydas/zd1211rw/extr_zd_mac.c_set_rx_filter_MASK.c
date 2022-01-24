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
typedef  int /*<<< orphan*/  u32 ;
struct zd_mac {int /*<<< orphan*/  chip; int /*<<< orphan*/  lock; scalar_t__ pass_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_RX_FILTER ; 
 int /*<<< orphan*/  RX_FILTER_CTRL ; 
 int /*<<< orphan*/  STA_RX_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct zd_mac *mac)
{
	unsigned long flags;
	u32 filter = STA_RX_FILTER;

	FUNC0(&mac->lock, flags);
	if (mac->pass_ctrl)
		filter |= RX_FILTER_CTRL;
	FUNC1(&mac->lock, flags);

	return FUNC2(&mac->chip, CR_RX_FILTER, filter);
}