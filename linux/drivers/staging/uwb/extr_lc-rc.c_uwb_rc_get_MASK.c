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
struct uwb_rc {scalar_t__ ready; int /*<<< orphan*/  uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct uwb_rc *FUNC1(struct uwb_rc *rc)
{
	if (rc->ready == 0)
		return NULL;
	FUNC0(&rc->uwb_dev);
	return rc;
}