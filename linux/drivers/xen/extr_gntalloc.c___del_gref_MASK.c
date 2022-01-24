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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int flags; size_t pgoff; int /*<<< orphan*/  event; } ;
struct gntalloc_gref {scalar_t__ page; int /*<<< orphan*/  next_gref; scalar_t__ gref_id; TYPE_1__ notify; } ;

/* Variables and functions */
 int UNMAP_NOTIFY_CLEAR_BYTE ; 
 int UNMAP_NOTIFY_SEND_EVENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  gref_size ; 
 int /*<<< orphan*/  FUNC5 (struct gntalloc_gref*) ; 
 scalar_t__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct gntalloc_gref *gref)
{
	if (gref->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
		uint8_t *tmp = FUNC6(gref->page);
		tmp[gref->notify.pgoff] = 0;
		FUNC7(gref->page);
	}
	if (gref->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
		FUNC9(gref->notify.event);
		FUNC1(gref->notify.event);
	}

	gref->notify.flags = 0;

	if (gref->gref_id) {
		if (FUNC4(gref->gref_id))
			return;

		if (!FUNC2(gref->gref_id, 0))
			return;

		FUNC3(gref->gref_id);
	}

	gref_size--;
	FUNC8(&gref->next_gref);

	if (gref->page)
		FUNC0(gref->page);

	FUNC5(gref);
}