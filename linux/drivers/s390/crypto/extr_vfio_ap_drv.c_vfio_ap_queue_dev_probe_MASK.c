#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vfio_ap_queue {int /*<<< orphan*/  saved_isc; int /*<<< orphan*/  apqn; } ;
struct ap_device {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  qid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VFIO_AP_ISC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vfio_ap_queue*) ; 
 struct vfio_ap_queue* FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ap_device *apdev)
{
	struct vfio_ap_queue *q;

	q = FUNC1(sizeof(*q), GFP_KERNEL);
	if (!q)
		return -ENOMEM;
	FUNC0(&apdev->device, q);
	q->apqn = FUNC2(&apdev->device)->qid;
	q->saved_isc = VFIO_AP_ISC_INVALID;
	return 0;
}