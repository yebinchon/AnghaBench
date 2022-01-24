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
struct iscsi_param {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_param*) ; 
 scalar_t__ KEY_MAXLEN ; 
 int SENDER_INITIATOR ; 
 int SENDER_RECEIVER ; 
 int SENDER_TARGET ; 
 struct iscsi_param* FUNC2 (char*,struct iscsi_param_list*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static struct iscsi_param *FUNC5(
	char *key,
	int sender,
	struct iscsi_param_list *param_list)
{
	struct iscsi_param *param;

	if (FUNC4(key) > KEY_MAXLEN) {
		FUNC3("Length of key name \"%s\" exceeds %d.\n",
			key, KEY_MAXLEN);
		return NULL;
	}

	param = FUNC2(key, param_list);
	if (!param)
		return NULL;

	if ((sender & SENDER_INITIATOR) && !FUNC0(param)) {
		FUNC3("Key \"%s\" may not be sent to %s,"
			" protocol error.\n", param->name,
			(sender & SENDER_RECEIVER) ? "target" : "initiator");
		return NULL;
	}

	if ((sender & SENDER_TARGET) && !FUNC1(param)) {
		FUNC3("Key \"%s\" may not be sent to %s,"
			" protocol error.\n", param->name,
			(sender & SENDER_RECEIVER) ? "initiator" : "target");
		return NULL;
	}

	return param;
}