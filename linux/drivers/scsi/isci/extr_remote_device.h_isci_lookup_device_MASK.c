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
struct isci_remote_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  flags; } ;
struct domain_device {struct isci_remote_device* lldd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDEV_GONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct isci_remote_device *FUNC2(struct domain_device *dev)
{
	struct isci_remote_device *idev = dev->lldd_dev;

	if (idev && !FUNC1(IDEV_GONE, &idev->flags)) {
		FUNC0(&idev->kref);
		return idev;
	}

	return NULL;
}