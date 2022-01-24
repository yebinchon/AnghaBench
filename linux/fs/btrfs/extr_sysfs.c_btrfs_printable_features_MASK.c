#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;
struct TYPE_7__ {TYPE_2__ kobj_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__** btrfs_feature_attrs ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,char*,char const*) ; 

char *FUNC3(enum btrfs_feature_set set, u64 flags)
{
	size_t bufsize = 4096; /* safe max, 64 names * 64 bytes */
	int len = 0;
	int i;
	char *str;

	str = FUNC1(bufsize, GFP_KERNEL);
	if (!str)
		return str;

	for (i = 0; i < FUNC0(btrfs_feature_attrs[set]); i++) {
		const char *name;

		if (!(flags & (1ULL << i)))
			continue;

		name = btrfs_feature_attrs[set][i].kobj_attr.attr.name;
		len += FUNC2(str + len, bufsize - len, "%s%s",
				len ? "," : "", name);
	}

	return str;
}