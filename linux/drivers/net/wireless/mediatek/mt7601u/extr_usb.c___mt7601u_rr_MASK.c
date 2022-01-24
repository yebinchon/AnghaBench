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
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  vend_buf; } ;

/* Variables and functions */
 int MT_VEND_BUF ; 
 int /*<<< orphan*/  MT_VEND_MULTI_READ ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct mt7601u_dev *dev, u32 offset)
{
	int ret;
	u32 val = ~0;

	FUNC0(offset > USHRT_MAX, "read high off:%08x", offset);

	ret = FUNC3(dev, MT_VEND_MULTI_READ, USB_DIR_IN,
				     0, offset, dev->vend_buf, MT_VEND_BUF);
	if (ret == MT_VEND_BUF)
		val = FUNC2(dev->vend_buf);
	else if (ret > 0)
		FUNC1(dev->dev, "Error: wrong size read:%d off:%08x\n",
			ret, offset);

	FUNC4(dev, offset, val);
	return val;
}