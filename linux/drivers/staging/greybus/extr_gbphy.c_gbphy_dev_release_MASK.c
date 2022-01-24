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
struct gbphy_device {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  gbphy_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gbphy_device*) ; 
 struct gbphy_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct gbphy_device *gbphy_dev = FUNC2(dev);

	FUNC0(&gbphy_id, gbphy_dev->id);
	FUNC1(gbphy_dev);
}