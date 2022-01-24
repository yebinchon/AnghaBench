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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_GEN ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct net_device *dev, u32 mask, u32 timeout)
{
	unsigned long deadline = jiffies + FUNC1(timeout);

	while (FUNC3(jiffies, deadline)) {
		if (FUNC2(dev, CPU_GEN) & mask)
			return true;
		FUNC0(2);
	}
	return false;
}