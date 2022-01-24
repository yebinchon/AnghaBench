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
typedef  int u32 ;
struct iscsi_node_attrib {int default_erl; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_node_acl*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(
	struct iscsi_node_acl *acl,
	u32 default_erl)
{
	struct iscsi_node_attrib *a = &acl->node_attrib;

	if (default_erl != 0 && default_erl != 1 && default_erl != 2) {
		FUNC2("Requested default ERL: %u not 0, 1, or 2\n",
				default_erl);
		return -EINVAL;
	}

	a->default_erl = default_erl;
	FUNC1("Set use ERL0 flag to %u for Initiator"
		" Node %s\n", a->default_erl,
		FUNC0(acl));

	return 0;
}