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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REV_RT3390E ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev)
{
	FUNC0(rt2x00dev, 65, 0x2c);
	FUNC0(rt2x00dev, 66, 0x38);

	FUNC0(rt2x00dev, 69, 0x12);
	FUNC0(rt2x00dev, 73, 0x10);

	FUNC0(rt2x00dev, 70, 0x0a);

	FUNC0(rt2x00dev, 79, 0x13);
	FUNC0(rt2x00dev, 80, 0x05);
	FUNC0(rt2x00dev, 81, 0x33);

	FUNC0(rt2x00dev, 82, 0x62);

	FUNC0(rt2x00dev, 83, 0x6a);

	FUNC0(rt2x00dev, 84, 0x99);

	FUNC0(rt2x00dev, 86, 0x00);

	FUNC0(rt2x00dev, 91, 0x04);

	FUNC0(rt2x00dev, 92, 0x00);

	if (FUNC2(rt2x00dev, RT3390, REV_RT3390E))
		FUNC0(rt2x00dev, 103, 0xc0);
	else
		FUNC0(rt2x00dev, 103, 0x00);

	FUNC0(rt2x00dev, 105, 0x05);

	FUNC0(rt2x00dev, 106, 0x35);

	FUNC1(rt2x00dev);
}