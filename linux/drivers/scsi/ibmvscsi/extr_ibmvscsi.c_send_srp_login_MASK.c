#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union srp_iu {int dummy; } srp_iu ;
struct srp_login_req {int /*<<< orphan*/  req_buf_fmt; int /*<<< orphan*/  req_it_iu_len; int /*<<< orphan*/  opcode; } ;
struct TYPE_4__ {struct srp_login_req login_req; } ;
struct TYPE_5__ {TYPE_1__ srp; } ;
struct srp_event_struct {TYPE_2__ iu; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; TYPE_3__* host; int /*<<< orphan*/  request_limit; int /*<<< orphan*/  pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SRP_BUF_FORMAT_DIRECT ; 
 int SRP_BUF_FORMAT_INDIRECT ; 
 int /*<<< orphan*/  SRP_LOGIN_REQ ; 
 int /*<<< orphan*/  VIOSRP_SRP_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct srp_event_struct* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct srp_event_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  login_rsp ; 
 int login_timeout ; 
 int /*<<< orphan*/  FUNC8 (struct srp_login_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct ibmvscsi_host_data *hostdata)
{
	int rc;
	unsigned long flags;
	struct srp_login_req *login;
	struct srp_event_struct *evt_struct = FUNC5(&hostdata->pool);

	FUNC0(!evt_struct);
	FUNC7(evt_struct, login_rsp,
			  VIOSRP_SRP_FORMAT, login_timeout);

	login = &evt_struct->iu.srp.login_req;
	FUNC8(login, 0, sizeof(*login));
	login->opcode = SRP_LOGIN_REQ;
	login->req_it_iu_len = FUNC3(sizeof(union srp_iu));
	login->req_buf_fmt = FUNC2(SRP_BUF_FORMAT_DIRECT |
					 SRP_BUF_FORMAT_INDIRECT);

	FUNC9(hostdata->host->host_lock, flags);
	/* Start out with a request limit of 0, since this is negotiated in
	 * the login request we are just sending and login requests always
	 * get sent by the driver regardless of request_limit.
	 */
	FUNC1(&hostdata->request_limit, 0);

	rc = FUNC6(evt_struct, hostdata, login_timeout * 2);
	FUNC10(hostdata->host->host_lock, flags);
	FUNC4(hostdata->dev, "sent SRP login\n");
	return rc;
}