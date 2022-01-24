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
struct acm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  port; scalar_t__ disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  acm_minors ; 
 int /*<<< orphan*/  acm_minors_lock ; 
 struct acm* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct acm *FUNC4(unsigned int minor)
{
	struct acm *acm;

	FUNC1(&acm_minors_lock);
	acm = FUNC0(&acm_minors, minor);
	if (acm) {
		FUNC1(&acm->mutex);
		if (acm->disconnected) {
			FUNC2(&acm->mutex);
			acm = NULL;
		} else {
			FUNC3(&acm->port);
			FUNC2(&acm->mutex);
		}
	}
	FUNC2(&acm_minors_lock);
	return acm;
}