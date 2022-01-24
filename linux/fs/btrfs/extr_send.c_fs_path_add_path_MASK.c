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
struct fs_path {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int FUNC0 (struct fs_path*,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct fs_path *p, struct fs_path *p2)
{
	int ret;
	char *prepared;

	ret = FUNC0(p, p2->end - p2->start, &prepared);
	if (ret < 0)
		goto out;
	FUNC1(prepared, p2->start, p2->end - p2->start);

out:
	return ret;
}