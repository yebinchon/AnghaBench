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
typedef  scalar_t__ u8 ;
struct iscsi_login_stats {int /*<<< orphan*/  lock; int /*<<< orphan*/  last_fail_time; int /*<<< orphan*/  last_intr_fail_sockaddr; int /*<<< orphan*/  last_intr_fail_ip_family; int /*<<< orphan*/  last_intr_fail_name; int /*<<< orphan*/  last_fail_type; int /*<<< orphan*/  other_fails; int /*<<< orphan*/  negotiate_fails; int /*<<< orphan*/  authorize_fails; int /*<<< orphan*/  authenticate_fails; int /*<<< orphan*/  redirects; int /*<<< orphan*/  accepts; } ;
struct iscsi_tiqn {struct iscsi_login_stats login_stats; } ;
struct iscsi_param {char* value; } ;
struct iscsi_conn {int /*<<< orphan*/  login_sockaddr; int /*<<< orphan*/  login_family; scalar_t__ param_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  INITIATORNAME ; 
 int /*<<< orphan*/  ISCSI_LOGIN_FAIL_AUTHENTICATE ; 
 int /*<<< orphan*/  ISCSI_LOGIN_FAIL_AUTHORIZE ; 
 int /*<<< orphan*/  ISCSI_LOGIN_FAIL_NEGOTIATE ; 
 int /*<<< orphan*/  ISCSI_LOGIN_FAIL_OTHER ; 
 int /*<<< orphan*/  ISCSI_LOGIN_FAIL_REDIRECT ; 
 scalar_t__ ISCSI_LOGIN_STATUS_AUTH_FAILED ; 
 scalar_t__ ISCSI_LOGIN_STATUS_INIT_ERR ; 
 scalar_t__ ISCSI_LOGIN_STATUS_TGT_FORBIDDEN ; 
 scalar_t__ ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 scalar_t__ ISCSI_STATUS_CLS_REDIRECT ; 
 scalar_t__ ISCSI_STATUS_CLS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct iscsi_param* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct iscsi_tiqn* FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC6(
	struct iscsi_conn *conn,
	u8 status_class,
	u8 status_detail)
{
	struct iscsi_param *intrname = NULL;
	struct iscsi_tiqn *tiqn;
	struct iscsi_login_stats *ls;

	tiqn = FUNC2(conn);
	if (!tiqn)
		return;

	ls = &tiqn->login_stats;

	FUNC3(&ls->lock);
	if (status_class == ISCSI_STATUS_CLS_SUCCESS)
		ls->accepts++;
	else if (status_class == ISCSI_STATUS_CLS_REDIRECT) {
		ls->redirects++;
		ls->last_fail_type = ISCSI_LOGIN_FAIL_REDIRECT;
	} else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR)  &&
		 (status_detail == ISCSI_LOGIN_STATUS_AUTH_FAILED)) {
		ls->authenticate_fails++;
		ls->last_fail_type =  ISCSI_LOGIN_FAIL_AUTHENTICATE;
	} else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR)  &&
		 (status_detail == ISCSI_LOGIN_STATUS_TGT_FORBIDDEN)) {
		ls->authorize_fails++;
		ls->last_fail_type = ISCSI_LOGIN_FAIL_AUTHORIZE;
	} else if ((status_class == ISCSI_STATUS_CLS_INITIATOR_ERR) &&
		 (status_detail == ISCSI_LOGIN_STATUS_INIT_ERR)) {
		ls->negotiate_fails++;
		ls->last_fail_type = ISCSI_LOGIN_FAIL_NEGOTIATE;
	} else {
		ls->other_fails++;
		ls->last_fail_type = ISCSI_LOGIN_FAIL_OTHER;
	}

	/* Save initiator name, ip address and time, if it is a failed login */
	if (status_class != ISCSI_STATUS_CLS_SUCCESS) {
		if (conn->param_list)
			intrname = FUNC1(INITIATORNAME,
							     conn->param_list);
		FUNC5(ls->last_intr_fail_name,
		       (intrname ? intrname->value : "Unknown"),
		       sizeof(ls->last_intr_fail_name));

		ls->last_intr_fail_ip_family = conn->login_family;

		ls->last_intr_fail_sockaddr = conn->login_sockaddr;
		ls->last_fail_time = FUNC0();
	}

	FUNC4(&ls->lock);
}