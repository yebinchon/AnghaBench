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
typedef  int /*<<< orphan*/  u32 ;
struct isci_request {int /*<<< orphan*/  flags; } ;
struct isci_remote_device {int dummy; } ;
struct isci_host {int /*<<< orphan*/  scic_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IREQ_ABORT_PATH_ACTIVE ; 
 scalar_t__ FUNC0 (struct isci_remote_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(
	struct isci_host *ihost,
	struct isci_remote_device *idev,
	struct isci_request *ireq,
	u32 localcount)
{
	unsigned long flags;
	bool res;

	FUNC1(&ihost->scic_lock, flags);
	res = FUNC0(idev, localcount)
		&& !FUNC3(IREQ_ABORT_PATH_ACTIVE, &ireq->flags);
	FUNC2(&ihost->scic_lock, flags);

	return res;
}