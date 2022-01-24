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
struct eth_dev {int /*<<< orphan*/  work; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct eth_dev *dev, int flag)
{
	if (FUNC3(flag, &dev->todo))
		return;
	if (!FUNC2(&dev->work))
		FUNC1(dev, "kevent %d may have been dropped\n", flag);
	else
		FUNC0(dev, "kevent %d scheduled\n", flag);
}