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
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,int) ; 
 int RIO_PORT_N_ERR_STS_PORT_OK ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC2(struct rio_dev *rdev, int sp)
{
	u32 result = 0;

	FUNC1(rdev, FUNC0(rdev, sp),
			   &result);

	return result & RIO_PORT_N_ERR_STS_PORT_OK;
}