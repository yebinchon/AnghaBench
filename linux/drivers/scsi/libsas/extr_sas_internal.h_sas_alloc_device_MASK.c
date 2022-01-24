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
struct domain_device {int /*<<< orphan*/  done_lock; int /*<<< orphan*/  kref; int /*<<< orphan*/  disco_list_node; int /*<<< orphan*/  dev_list_node; int /*<<< orphan*/  siblings; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct domain_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct domain_device *FUNC4(void)
{
	struct domain_device *dev = FUNC2(sizeof(*dev), GFP_KERNEL);

	if (dev) {
		FUNC0(&dev->siblings);
		FUNC0(&dev->dev_list_node);
		FUNC0(&dev->disco_list_node);
		FUNC1(&dev->kref);
		FUNC3(&dev->done_lock);
	}
	return dev;
}