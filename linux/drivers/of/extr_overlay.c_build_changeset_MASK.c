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
struct target {int in_livetree; int /*<<< orphan*/  np; } ;
struct overlay_changeset {int count; struct fragment* fragments; scalar_t__ symbols_fragment; } ;
struct fragment {int /*<<< orphan*/  target; int /*<<< orphan*/  overlay; } ;

/* Variables and functions */
 int FUNC0 (struct overlay_changeset*,struct target*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct overlay_changeset*,struct target*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct overlay_changeset*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct overlay_changeset *ovcs)
{
	struct fragment *fragment;
	struct target target;
	int fragments_count, i, ret;

	/*
	 * if there is a symbols fragment in ovcs->fragments[i] it is
	 * the final element in the array
	 */
	if (ovcs->symbols_fragment)
		fragments_count = ovcs->count - 1;
	else
		fragments_count = ovcs->count;

	for (i = 0; i < fragments_count; i++) {
		fragment = &ovcs->fragments[i];

		target.np = fragment->target;
		target.in_livetree = true;
		ret = FUNC0(ovcs, &target,
						 fragment->overlay);
		if (ret) {
			FUNC3("fragment apply failed '%pOF'\n",
				 fragment->target);
			return ret;
		}
	}

	if (ovcs->symbols_fragment) {
		fragment = &ovcs->fragments[ovcs->count - 1];

		target.np = fragment->target;
		target.in_livetree = true;
		ret = FUNC1(ovcs, &target,
						   fragment->overlay);
		if (ret) {
			FUNC3("symbols fragment apply failed '%pOF'\n",
				 fragment->target);
			return ret;
		}
	}

	return FUNC2(ovcs);
}