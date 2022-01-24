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
struct vmmdev_hgcmreq_header {int flags; } ;
struct vbg_dev {int /*<<< orphan*/  event_spinlock; } ;

/* Variables and functions */
 int VMMDEV_HGCM_REQ_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct vbg_dev *gdev,
			  struct vmmdev_hgcmreq_header *header)
{
	unsigned long flags;
	bool done;

	FUNC0(&gdev->event_spinlock, flags);
	done = header->flags & VMMDEV_HGCM_REQ_DONE;
	FUNC1(&gdev->event_spinlock, flags);

	return done;
}