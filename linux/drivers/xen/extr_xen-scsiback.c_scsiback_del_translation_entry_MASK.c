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
struct vscsibk_info {int /*<<< orphan*/  v2p_lock; } ;
struct v2p_entry {int dummy; } ;
struct ids_tuple {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct v2p_entry*) ; 
 struct v2p_entry* FUNC1 (struct vscsibk_info*,struct ids_tuple*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct vscsibk_info *info,
					  struct ids_tuple *v)
{
	struct v2p_entry *entry;
	unsigned long flags;
	int ret = 0;

	FUNC2(&info->v2p_lock, flags);
	/* Find out the translation entry specified */
	entry = FUNC1(info, v);
	if (entry)
		FUNC0(entry);
	else
		ret = -ENOENT;

	FUNC3(&info->v2p_lock, flags);
	return ret;
}