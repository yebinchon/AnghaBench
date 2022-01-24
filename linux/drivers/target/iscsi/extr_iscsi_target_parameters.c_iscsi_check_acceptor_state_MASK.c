#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct iscsi_param {char* name; char* value; } ;
struct iscsi_conn {int /*<<< orphan*/  param_list; TYPE_1__* conn_ops; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {unsigned long long MaxRecvDataSegmentLength; } ;

/* Variables and functions */
 char* DEFAULTTIME2RETAIN ; 
 char* DEFAULTTIME2WAIT ; 
 char* ERRORRECOVERYLEVEL ; 
 char* FIRSTBURSTLENGTH ; 
 scalar_t__ FUNC0 (struct iscsi_param*) ; 
 scalar_t__ FUNC1 (struct iscsi_param*) ; 
 scalar_t__ FUNC2 (struct iscsi_param*) ; 
 scalar_t__ FUNC3 (struct iscsi_param*) ; 
 scalar_t__ FUNC4 (struct iscsi_param*) ; 
 scalar_t__ FUNC5 (struct iscsi_param*) ; 
 scalar_t__ FUNC6 (struct iscsi_param*) ; 
 char* MAXBURSTLENGTH ; 
 char* MAXCONNECTIONS ; 
 char* MAXOUTSTANDINGR2T ; 
 char* MAXRECVDATASEGMENTLENGTH ; 
 int /*<<< orphan*/  MAXXMITDATASEGMENTLENGTH ; 
 char* NO ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_param*) ; 
 char* YES ; 
 char* FUNC8 (struct iscsi_param*,char*) ; 
 struct iscsi_param* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct iscsi_param*,char*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,...) ; 
 scalar_t__ FUNC15 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

__attribute__((used)) static int FUNC18(struct iscsi_param *param, char *value,
				struct iscsi_conn *conn)
{
	u8 acceptor_boolean_value = 0, proposer_boolean_value = 0;
	char *negotiated_value = NULL;

	if (FUNC1(param)) {
		FUNC14("Received key \"%s\" twice, protocol error.\n",
				param->name);
		return -1;
	}

	if (FUNC2(param))
		return 0;

	if (FUNC3(param)) {
		if (!FUNC17(value, YES))
			proposer_boolean_value = 1;
		if (!FUNC17(param->value, YES))
			acceptor_boolean_value = 1;
		if (acceptor_boolean_value && proposer_boolean_value)
			do {} while (0);
		else {
			if (FUNC10(param, NO) < 0)
				return -1;
			if (!proposer_boolean_value)
				FUNC7(param);
		}
	} else if (FUNC4(param)) {
		if (!FUNC17(value, YES))
			proposer_boolean_value = 1;
		if (!FUNC17(param->value, YES))
			acceptor_boolean_value = 1;
		if (acceptor_boolean_value || proposer_boolean_value) {
			if (FUNC10(param, YES) < 0)
				return -1;
			if (proposer_boolean_value)
				FUNC7(param);
		}
	} else if (FUNC5(param)) {
		char *tmpptr, buf[11];
		u32 acceptor_value = FUNC15(param->value, &tmpptr, 0);
		u32 proposer_value = FUNC15(value, &tmpptr, 0);

		FUNC12(buf, 0, sizeof(buf));

		if (!FUNC17(param->name, MAXCONNECTIONS) ||
		    !FUNC17(param->name, MAXBURSTLENGTH) ||
		    !FUNC17(param->name, FIRSTBURSTLENGTH) ||
		    !FUNC17(param->name, MAXOUTSTANDINGR2T) ||
		    !FUNC17(param->name, DEFAULTTIME2RETAIN) ||
		    !FUNC17(param->name, ERRORRECOVERYLEVEL)) {
			if (proposer_value > acceptor_value) {
				FUNC16(buf, "%u", acceptor_value);
				if (FUNC10(param,
						&buf[0]) < 0)
					return -1;
			} else {
				if (FUNC10(param, value) < 0)
					return -1;
			}
		} else if (!FUNC17(param->name, DEFAULTTIME2WAIT)) {
			if (acceptor_value > proposer_value) {
				FUNC16(buf, "%u", acceptor_value);
				if (FUNC10(param,
						&buf[0]) < 0)
					return -1;
			} else {
				if (FUNC10(param, value) < 0)
					return -1;
			}
		} else {
			if (FUNC10(param, value) < 0)
				return -1;
		}

		if (!FUNC17(param->name, MAXRECVDATASEGMENTLENGTH)) {
			struct iscsi_param *param_mxdsl;
			unsigned long long tmp;
			int rc;

			rc = FUNC11(param->value, 0, &tmp);
			if (rc < 0)
				return -1;

			conn->conn_ops->MaxRecvDataSegmentLength = tmp;
			FUNC13("Saving op->MaxRecvDataSegmentLength from"
				" original initiator received value: %u\n",
				conn->conn_ops->MaxRecvDataSegmentLength);

			param_mxdsl = FUNC9(
						MAXXMITDATASEGMENTLENGTH,
						conn->param_list);
			if (!param_mxdsl)
				return -1;

			rc = FUNC10(param,
						param_mxdsl->value);
			if (rc < 0)
				return -1;

			FUNC13("Updated %s to target MXDSL value: %s\n",
					param->name, param->value);
		}
	} else if (FUNC6(param)) {
		negotiated_value = FUNC8(
					param, value);
		if (!negotiated_value) {
			FUNC14("Proposer's value list \"%s\" contains"
				" no valid values from Acceptor's value list"
				" \"%s\".\n", value, param->value);
			return -1;
		}
		if (FUNC10(param, negotiated_value) < 0)
			return -1;
	} else if (FUNC0(param)) {
		if (FUNC10(param, value) < 0)
			return -1;
		FUNC7(param);
	}

	return 0;
}