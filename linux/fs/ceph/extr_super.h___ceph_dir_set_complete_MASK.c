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
struct ceph_inode_info {int /*<<< orphan*/ * i_complete_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct ceph_inode_info *ci,
					   long long release_count,
					   long long ordered_count)
{
	/*
	 * Makes sure operations that setup readdir cache (update page
	 * cache and i_size) are strongly ordered w.r.t. the following
	 * atomic64_set() operations.
	 */
	FUNC1();
	FUNC0(&ci->i_complete_seq[0], release_count);
	FUNC0(&ci->i_complete_seq[1], ordered_count);
}