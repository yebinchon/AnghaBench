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
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  max_high_temp ; 
 int /*<<< orphan*/  min_low_temp ; 

__attribute__((used)) static int FUNC2(struct device *dev, int trip_temp)
{
	int temp;

	temp = FUNC0(trip_temp, min_low_temp, max_high_temp);
	if (temp != trip_temp)
		FUNC1(dev, "soctherm: trip temperature %d forced to %d\n",
			 trip_temp, temp);
	return temp;
}