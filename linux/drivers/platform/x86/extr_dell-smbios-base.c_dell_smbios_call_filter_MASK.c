#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct device {int dummy; } ;
struct calling_interface_buffer {int cmd_class; int cmd_select; int /*<<< orphan*/ * input; } ;
struct TYPE_8__ {int /*<<< orphan*/  tokenID; int /*<<< orphan*/  location; } ;
struct TYPE_7__ {int cmd_class; int cmd_select; int /*<<< orphan*/  need_capability; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int CLASS_TOKEN_READ ; 
 int CLASS_TOKEN_WRITE ; 
 int EACCES ; 
 int EINVAL ; 
 TYPE_1__* call_blacklist ; 
 TYPE_1__* call_whitelist ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int da_num_tokens ; 
 int da_supported_commands ; 
 TYPE_3__* da_tokens ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 TYPE_1__* token_blacklist ; 
 TYPE_1__* token_whitelist ; 

int FUNC3(struct device *d,
			    struct calling_interface_buffer *buffer)
{
	u16 t = 0;
	int i;

	/* can't make calls over 30 */
	if (buffer->cmd_class > 30) {
		FUNC2(d, "class too big: %u\n", buffer->cmd_class);
		return -EINVAL;
	}

	/* supported calls on the particular system */
	if (!(da_supported_commands & (1 << buffer->cmd_class))) {
		FUNC2(d, "invalid command, supported commands: 0x%8x\n",
			da_supported_commands);
		return -EINVAL;
	}

	/* match against call blacklist  */
	for (i = 0; i < FUNC0(call_blacklist); i++) {
		if (buffer->cmd_class != call_blacklist[i].cmd_class)
			continue;
		if (buffer->cmd_select != call_blacklist[i].cmd_select &&
		    call_blacklist[i].cmd_select != -1)
			continue;
		FUNC2(d, "blacklisted command: %u/%u\n",
			buffer->cmd_class, buffer->cmd_select);
		return -EINVAL;
	}

	/* if a token call, find token ID */

	if ((buffer->cmd_class == CLASS_TOKEN_READ ||
	     buffer->cmd_class == CLASS_TOKEN_WRITE) &&
	     buffer->cmd_select < 3) {
		/* tokens enabled ? */
		if (!da_tokens) {
			FUNC2(d, "no token support on this system\n");
			return -EINVAL;
		}

		/* find the matching token ID */
		for (i = 0; i < da_num_tokens; i++) {
			if (da_tokens[i].location != buffer->input[0])
				continue;
			t = da_tokens[i].tokenID;
			break;
		}

		/* token call; but token didn't exist */
		if (!t) {
			FUNC2(d, "token at location %04x doesn't exist\n",
				buffer->input[0]);
			return -EINVAL;
		}

		/* match against token blacklist */
		for (i = 0; i < FUNC0(token_blacklist); i++) {
			if (!token_blacklist[i].min || !token_blacklist[i].max)
				continue;
			if (t >= token_blacklist[i].min &&
			    t <= token_blacklist[i].max)
				return -EINVAL;
		}

		/* match against token whitelist */
		for (i = 0; i < FUNC0(token_whitelist); i++) {
			if (!token_whitelist[i].min || !token_whitelist[i].max)
				continue;
			if (t < token_whitelist[i].min ||
			    t > token_whitelist[i].max)
				continue;
			if (!token_whitelist[i].need_capability ||
			    FUNC1(token_whitelist[i].need_capability)) {
				FUNC2(d, "whitelisted token: %x\n", t);
				return 0;
			}

		}
	}
	/* match against call whitelist */
	for (i = 0; i < FUNC0(call_whitelist); i++) {
		if (buffer->cmd_class != call_whitelist[i].cmd_class)
			continue;
		if (buffer->cmd_select != call_whitelist[i].cmd_select)
			continue;
		if (!call_whitelist[i].need_capability ||
		    FUNC1(call_whitelist[i].need_capability)) {
			FUNC2(d, "whitelisted capable command: %u/%u\n",
			buffer->cmd_class, buffer->cmd_select);
			return 0;
		}
		FUNC2(d, "missing capability %d for %u/%u\n",
			call_whitelist[i].need_capability,
			buffer->cmd_class, buffer->cmd_select);

	}

	/* not in a whitelist, only allow processes with capabilities */
	if (FUNC1(CAP_SYS_RAWIO)) {
		FUNC2(d, "Allowing %u/%u due to CAP_SYS_RAWIO\n",
			buffer->cmd_class, buffer->cmd_select);
		return 0;
	}

	return -EACCES;
}