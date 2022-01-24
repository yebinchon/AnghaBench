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
struct nvmet_ns {int /*<<< orphan*/ * file; int /*<<< orphan*/ * bvec_cache; int /*<<< orphan*/ * bvec_pool; scalar_t__ buffered_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  buffered_io_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nvmet_ns *ns)
{
	if (ns->file) {
		if (ns->buffered_io)
			FUNC0(buffered_io_wq);
		FUNC3(ns->bvec_pool);
		ns->bvec_pool = NULL;
		FUNC2(ns->bvec_cache);
		ns->bvec_cache = NULL;
		FUNC1(ns->file);
		ns->file = NULL;
	}
}