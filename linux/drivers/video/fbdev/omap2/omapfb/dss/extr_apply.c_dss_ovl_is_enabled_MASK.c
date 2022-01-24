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
struct ovl_priv_data {int enabled; } ;
struct omap_overlay {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_lock ; 
 struct ovl_priv_data* FUNC0 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC0(ovl);
	unsigned long flags;
	bool e;

	FUNC1(&data_lock, flags);

	e = op->enabled;

	FUNC2(&data_lock, flags);

	return e;
}