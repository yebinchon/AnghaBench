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
struct rf_channel {void* rf4; void* rf3; void* rf2; void* rf1; } ;

/* Variables and functions */
 void* FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,struct rf_channel*,int const) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
				   const int txpower)
{
	struct rf_channel rf;

	rf.rf1 = FUNC0(rt2x00dev, 1);
	rf.rf2 = FUNC0(rt2x00dev, 2);
	rf.rf3 = FUNC0(rt2x00dev, 3);
	rf.rf4 = FUNC0(rt2x00dev, 4);

	FUNC1(rt2x00dev, &rf, txpower);
}