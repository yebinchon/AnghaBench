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
struct se_node_acl {int /*<<< orphan*/  se_tpg; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct se_node_acl* FUNC0 (struct config_item*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct se_node_acl*,char const*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
		const char *page, size_t count)
{
	struct se_node_acl *se_nacl = FUNC0(item);
	int ret;

	ret = FUNC1(se_nacl->se_tpg, se_nacl, page);

	if (ret < 0)
		return ret;
	return count;
}