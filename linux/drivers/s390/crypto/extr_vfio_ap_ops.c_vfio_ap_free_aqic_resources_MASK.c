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
struct vfio_ap_queue {scalar_t__ saved_isc; scalar_t__ saved_pfn; TYPE_1__* matrix_mdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 scalar_t__ VFIO_AP_ISC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(struct vfio_ap_queue *q)
{
	if (q->saved_isc != VFIO_AP_ISC_INVALID && q->matrix_mdev)
		FUNC0(q->matrix_mdev->kvm, q->saved_isc);
	if (q->saved_pfn && q->matrix_mdev)
		FUNC2(FUNC1(q->matrix_mdev->mdev),
				 &q->saved_pfn, 1);
	q->saved_pfn = 0;
	q->saved_isc = VFIO_AP_ISC_INVALID;
}