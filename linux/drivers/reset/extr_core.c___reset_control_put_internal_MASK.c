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
struct reset_control {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  __reset_control_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_list_mutex ; 

__attribute__((used)) static void FUNC2(struct reset_control *rstc)
{
	FUNC1(&reset_list_mutex);

	FUNC0(&rstc->refcnt, __reset_control_release);
}