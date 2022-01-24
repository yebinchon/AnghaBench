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
struct configfs_fragment {int frag_dead; int /*<<< orphan*/  frag_sem; int /*<<< orphan*/  frag_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct configfs_fragment* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct configfs_fragment *FUNC3(void)
{
	struct configfs_fragment *p;

	p = FUNC2(sizeof(struct configfs_fragment), GFP_KERNEL);
	if (p) {
		FUNC0(&p->frag_count, 1);
		FUNC1(&p->frag_sem);
		p->frag_dead = false;
	}
	return p;
}