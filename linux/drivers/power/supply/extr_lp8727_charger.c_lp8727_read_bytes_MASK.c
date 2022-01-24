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
typedef  scalar_t__ u8 ;
struct lp8727_chg {int /*<<< orphan*/  xfer_lock; int /*<<< orphan*/  client; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct lp8727_chg *pchg, u8 reg, u8 *data, u8 len)
{
	s32 ret;

	FUNC1(&pchg->xfer_lock);
	ret = FUNC0(pchg->client, reg, len, data);
	FUNC2(&pchg->xfer_lock);

	return (ret != len) ? -EIO : 0;
}