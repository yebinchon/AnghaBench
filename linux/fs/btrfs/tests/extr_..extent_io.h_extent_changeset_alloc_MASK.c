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
struct extent_changeset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct extent_changeset*) ; 
 struct extent_changeset* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct extent_changeset *FUNC2(void)
{
	struct extent_changeset *ret;

	ret = FUNC1(sizeof(*ret), GFP_KERNEL);
	if (!ret)
		return NULL;

	FUNC0(ret);
	return ret;
}