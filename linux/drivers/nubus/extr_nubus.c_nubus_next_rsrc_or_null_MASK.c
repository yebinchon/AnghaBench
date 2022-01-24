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
struct nubus_rsrc {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  list ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nubus_rsrc* FUNC1 (struct nubus_rsrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nubus_func_rsrcs ; 

struct nubus_rsrc *FUNC2(struct nubus_rsrc *from)
{
	if (FUNC0(&from->list, &nubus_func_rsrcs))
		return NULL;
	return FUNC1(from, list);
}