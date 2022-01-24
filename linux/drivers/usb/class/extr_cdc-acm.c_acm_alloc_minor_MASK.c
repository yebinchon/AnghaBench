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
struct acm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACM_TTY_MINORS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  acm_minors ; 
 int /*<<< orphan*/  acm_minors_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,struct acm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acm *acm)
{
	int minor;

	FUNC1(&acm_minors_lock);
	minor = FUNC0(&acm_minors, acm, 0, ACM_TTY_MINORS, GFP_KERNEL);
	FUNC2(&acm_minors_lock);

	return minor;
}