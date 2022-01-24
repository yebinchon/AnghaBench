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
struct nd_region {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ND_REGION_PERSIST_CACHE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct nd_region *nd_region)
{
	return FUNC0(&nd_region->dev) &&
		!FUNC1(ND_REGION_PERSIST_CACHE, &nd_region->flags);
}