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
struct fs_path {int reversed; } ;

/* Variables and functions */
 struct fs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct fs_path*) ; 

__attribute__((used)) static struct fs_path *FUNC2(void)
{
	struct fs_path *p;

	p = FUNC0();
	if (!p)
		return NULL;
	p->reversed = 1;
	FUNC1(p);
	return p;
}