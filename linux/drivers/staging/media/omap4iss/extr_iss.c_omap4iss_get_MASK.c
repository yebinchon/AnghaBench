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
struct iss_device {scalar_t__ ref_count; int /*<<< orphan*/  iss_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct iss_device *FUNC4(struct iss_device *iss)
{
	struct iss_device *__iss = iss;

	if (!iss)
		return NULL;

	FUNC2(&iss->iss_mutex);
	if (iss->ref_count > 0)
		goto out;

	if (FUNC0(iss) < 0) {
		__iss = NULL;
		goto out;
	}

	FUNC1(iss);

out:
	if (__iss)
		iss->ref_count++;
	FUNC3(&iss->iss_mutex);

	return __iss;
}