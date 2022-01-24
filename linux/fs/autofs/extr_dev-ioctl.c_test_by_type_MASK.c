#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {int /*<<< orphan*/  dentry; } ;
struct autofs_info {TYPE_1__* sbi; } ;
struct TYPE_2__ {unsigned int type; } ;

/* Variables and functions */
 struct autofs_info* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct path *path, void *p)
{
	struct autofs_info *ino = FUNC0(path->dentry);

	return ino && ino->sbi->type & *(unsigned *)p;
}