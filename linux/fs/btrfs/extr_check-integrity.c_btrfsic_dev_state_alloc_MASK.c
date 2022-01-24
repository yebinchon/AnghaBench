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
struct btrfsic_dev_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfsic_dev_state*) ; 
 struct btrfsic_dev_state* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct btrfsic_dev_state *FUNC2(void)
{
	struct btrfsic_dev_state *ds;

	ds = FUNC1(sizeof(*ds), GFP_NOFS);
	if (NULL != ds)
		FUNC0(ds);

	return ds;
}