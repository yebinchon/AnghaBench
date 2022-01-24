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
typedef  scalar_t__ u32 ;
struct iscsi_node_attrib {int /*<<< orphan*/  nopin_timeout; scalar_t__ nopin_response_timeout; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NA_NOPIN_RESPONSE_TIMEOUT_MAX ; 
 scalar_t__ NA_NOPIN_RESPONSE_TIMEOUT_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_node_acl*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

int FUNC3(
	struct iscsi_node_acl *acl,
	u32 nopin_response_timeout)
{
	struct iscsi_node_attrib *a = &acl->node_attrib;

	if (nopin_response_timeout > NA_NOPIN_RESPONSE_TIMEOUT_MAX) {
		FUNC2("Requested NopIn Response Timeout %u larger"
			" than maximum %u\n", nopin_response_timeout,
				NA_NOPIN_RESPONSE_TIMEOUT_MAX);
		return -EINVAL;
	} else if (nopin_response_timeout < NA_NOPIN_RESPONSE_TIMEOUT_MIN) {
		FUNC2("Requested NopIn Response Timeout %u smaller"
			" than minimum %u\n", nopin_response_timeout,
				NA_NOPIN_RESPONSE_TIMEOUT_MIN);
		return -EINVAL;
	}

	a->nopin_response_timeout = nopin_response_timeout;
	FUNC1("Set NopIn Response Timeout to %u for"
		" Initiator Node %s\n", a->nopin_timeout,
		FUNC0(acl));

	return 0;
}