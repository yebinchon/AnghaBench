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
struct wa_xfer {int /*<<< orphan*/  segs_done; } ;
struct wa_seg {int status; } ;
typedef  enum wa_seg_status { ____Placeholder_wa_seg_status } wa_seg_status ;

/* Variables and functions */
 int FUNC0 (struct wa_xfer*) ; 

__attribute__((used)) static unsigned FUNC1(struct wa_xfer *xfer,
	struct wa_seg *seg, enum wa_seg_status status)
{
	seg->status = status;
	xfer->segs_done++;

	/* check for done. */
	return FUNC0(xfer);
}