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
struct zfcp_fsf_ct_els {int /*<<< orphan*/  handler; } ;
struct zfcp_fc_wka_port {int dummy; } ;
struct zfcp_adapter {int dummy; } ;
struct bsg_job {int timeout; struct zfcp_fsf_ct_els* dd_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  zfcp_fc_ct_job_handler ; 
 struct zfcp_fc_wka_port* FUNC0 (struct bsg_job*) ; 
 int FUNC1 (struct zfcp_fc_wka_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_fc_wka_port*) ; 
 int FUNC3 (struct zfcp_fc_wka_port*,struct zfcp_fsf_ct_els*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct bsg_job *job,
			       struct zfcp_adapter *adapter)
{
	int ret;
	struct zfcp_fsf_ct_els *ct = job->dd_data;
	struct zfcp_fc_wka_port *wka_port;

	wka_port = FUNC0(job);
	if (!wka_port)
		return -EINVAL;

	ret = FUNC1(wka_port);
	if (ret)
		return ret;

	ct->handler = zfcp_fc_ct_job_handler;
	ret = FUNC3(wka_port, ct, NULL, job->timeout / HZ);
	if (ret)
		FUNC2(wka_port);

	return ret;
}