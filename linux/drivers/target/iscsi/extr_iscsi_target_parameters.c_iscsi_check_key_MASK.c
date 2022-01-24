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
struct iscsi_param_list {int dummy; } ;
struct iscsi_param {char* name; int phase; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iscsi_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_param*) ; 
 scalar_t__ KEY_MAXLEN ; 
#define  PHASE_OPERATIONAL 129 
#define  PHASE_SECURITY 128 
 int SENDER_INITIATOR ; 
 int SENDER_RECEIVER ; 
 int SENDER_TARGET ; 
 struct iscsi_param* FUNC3 (char*,struct iscsi_param_list*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static struct iscsi_param *FUNC7(
	char *key,
	int phase,
	int sender,
	struct iscsi_param_list *param_list)
{
	struct iscsi_param *param;
	/*
	 * Key name length must not exceed 63 bytes. (See iSCSI v20 5.1)
	 */
	if (FUNC6(key) > KEY_MAXLEN) {
		FUNC5("Length of key name \"%s\" exceeds %d.\n",
			key, KEY_MAXLEN);
		return NULL;
	}

	param = FUNC3(key, param_list);
	if (!param)
		return NULL;

	if ((sender & SENDER_INITIATOR) && !FUNC1(param)) {
		FUNC5("Key \"%s\" may not be sent to %s,"
			" protocol error.\n", param->name,
			(sender & SENDER_RECEIVER) ? "target" : "initiator");
		return NULL;
	}
	if ((sender & SENDER_TARGET) && !FUNC2(param)) {
		FUNC5("Key \"%s\" may not be sent to %s,"
				" protocol error.\n", param->name,
			(sender & SENDER_RECEIVER) ? "initiator" : "target");
		return NULL;
	}

	if (FUNC0(param)) {
		FUNC5("Key \"%s\" received twice, protocol error.\n",
				key);
		return NULL;
	}

	if (!phase)
		return param;

	if (!(param->phase & phase)) {
		FUNC5("Key \"%s\" may not be negotiated during ",
				param->name);
		switch (phase) {
		case PHASE_SECURITY:
			FUNC4("Security phase.\n");
			break;
		case PHASE_OPERATIONAL:
			FUNC4("Operational phase.\n");
			break;
		default:
			FUNC4("Unknown phase.\n");
		}
		return NULL;
	}

	return param;
}