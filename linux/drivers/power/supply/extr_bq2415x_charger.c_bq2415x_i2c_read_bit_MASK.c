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
typedef  int u8 ;
struct bq2415x_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (struct bq2415x_device*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bq2415x_device *bq, u8 reg, u8 bit)
{
	if (bit > 8)
		return -EINVAL;
	return FUNC1(bq, reg, FUNC0(bit), bit);
}