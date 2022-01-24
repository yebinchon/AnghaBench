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
struct mt7601u_dev {int /*<<< orphan*/  vendor_req_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_VEND_WRITE ; 
 int FUNC0 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u32 FUNC4(struct mt7601u_dev *dev, u32 offset, u32 mask, u32 val)
{
	u32 reg;

	FUNC2(&dev->vendor_req_mutex);
	reg = FUNC0(dev, offset);
	val |= reg & ~mask;
	if (reg != val)
		FUNC1(dev, MT_VEND_WRITE,
					   offset, val);
	FUNC3(&dev->vendor_req_mutex);

	return val;
}