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
struct op_sample {int /*<<< orphan*/  event; int /*<<< orphan*/  eip; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  sample_lost_no_mapping; int /*<<< orphan*/  sample_lost_no_mm; } ;

/* Variables and functions */
 unsigned long INVALID_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long last_cookie ; 
 unsigned long FUNC3 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ oprofile_stats ; 

__attribute__((used)) static int
FUNC4(struct mm_struct *mm, struct op_sample *s, int in_kernel)
{
	unsigned long cookie;
	off_t offset;

	if (in_kernel) {
		FUNC1(s->eip, s->event);
		return 1;
	}

	/* add userspace sample */

	if (!mm) {
		FUNC2(&oprofile_stats.sample_lost_no_mm);
		return 0;
	}

	cookie = FUNC3(mm, s->eip, &offset);

	if (cookie == INVALID_COOKIE) {
		FUNC2(&oprofile_stats.sample_lost_no_mapping);
		return 0;
	}

	if (cookie != last_cookie) {
		FUNC0(cookie);
		last_cookie = cookie;
	}

	FUNC1(offset, s->event);

	return 1;
}