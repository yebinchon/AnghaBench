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
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RIO_PORT_N_CTL_LOCKOUT ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rio_dev *rdev, u32 pnum, int lock)
{
	u32 regval;

	FUNC1(rdev,
		FUNC0(rdev, pnum),
		&regval);
	if (lock)
		regval |= RIO_PORT_N_CTL_LOCKOUT;
	else
		regval &= ~RIO_PORT_N_CTL_LOCKOUT;

	FUNC2(rdev,
		FUNC0(rdev, pnum),
		regval);
	return 0;
}