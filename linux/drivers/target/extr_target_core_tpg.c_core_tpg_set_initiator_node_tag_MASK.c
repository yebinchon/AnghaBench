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
struct se_portal_group {int dummy; } ;
struct se_node_acl {char* acl_tag; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_ACL_TAG_SIZE ; 
 int FUNC0 (char*,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

int FUNC3(
	struct se_portal_group *tpg,
	struct se_node_acl *acl,
	const char *new_tag)
{
	if (FUNC1(new_tag) >= MAX_ACL_TAG_SIZE)
		return -EINVAL;

	if (!FUNC2("NULL", new_tag, 4)) {
		acl->acl_tag[0] = '\0';
		return 0;
	}

	return FUNC0(acl->acl_tag, MAX_ACL_TAG_SIZE, "%s", new_tag);
}