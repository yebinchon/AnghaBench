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
struct xen_feature_info {int submap_idx; int submap; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xen_feature_info*) ; 
 int /*<<< orphan*/  XENVER_get_features ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(int index, char *buffer)
{
	ssize_t ret;
	struct xen_feature_info info;

	info.submap_idx = index;
	ret = FUNC0(XENVER_get_features, &info);
	if (!ret)
		ret = FUNC1(buffer, "%08x", info.submap);

	return ret;
}