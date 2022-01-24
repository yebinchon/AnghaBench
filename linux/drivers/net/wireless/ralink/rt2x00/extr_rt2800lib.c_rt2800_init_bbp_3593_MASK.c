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
 int /*<<< orphan*/  REV_RT3593E ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev)
{
	FUNC1(rt2x00dev);

	FUNC0(rt2x00dev, 79, 0x13);
	FUNC0(rt2x00dev, 80, 0x05);
	FUNC0(rt2x00dev, 81, 0x33);
	FUNC0(rt2x00dev, 137, 0x0f);

	FUNC0(rt2x00dev, 84, 0x19);

	/* Enable DC filter */
	if (FUNC2(rt2x00dev, RT3593, REV_RT3593E))
		FUNC0(rt2x00dev, 103, 0xc0);
}