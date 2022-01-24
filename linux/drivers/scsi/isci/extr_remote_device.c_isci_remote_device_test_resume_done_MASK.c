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
struct isci_remote_device {int /*<<< orphan*/  rnc; int /*<<< orphan*/  flags; } ;
struct isci_host {int /*<<< orphan*/  scic_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDEV_ABORT_PATH_RESUME_PENDING ; 
 int /*<<< orphan*/  IDEV_STOP_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(
	struct isci_host *ihost,
	struct isci_remote_device *idev)
{
	unsigned long flags;
	bool done;

	FUNC1(&ihost->scic_lock, flags);
	done = !FUNC3(IDEV_ABORT_PATH_RESUME_PENDING, &idev->flags)
		|| FUNC3(IDEV_STOP_PENDING, &idev->flags)
		|| FUNC0(&idev->rnc);
	FUNC2(&ihost->scic_lock, flags);

	return done;
}