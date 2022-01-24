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
struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct bnx2i_hba {int /*<<< orphan*/  net_dev_lock; } ;
struct bnx2i_endpoint {TYPE_1__* cm_sk; struct bnx2i_hba* hba; } ;
typedef  enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_2__ {int /*<<< orphan*/  dst_ip; int /*<<< orphan*/ * dst_port; } ;

/* Variables and functions */
 int ENOSYS ; 
 int ENOTCONN ; 
#define  ISCSI_PARAM_CONN_ADDRESS 129 
#define  ISCSI_PARAM_CONN_PORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iscsi_endpoint *ep,
			      enum iscsi_param param, char *buf)
{
	struct bnx2i_endpoint *bnx2i_ep = ep->dd_data;
	struct bnx2i_hba *hba = bnx2i_ep->hba;
	int len = -ENOTCONN;

	if (!hba)
		return -ENOTCONN;

	switch (param) {
	case ISCSI_PARAM_CONN_PORT:
		FUNC0(&hba->net_dev_lock);
		if (bnx2i_ep->cm_sk)
			len = FUNC2(buf, "%hu\n", bnx2i_ep->cm_sk->dst_port);
		FUNC1(&hba->net_dev_lock);
		break;
	case ISCSI_PARAM_CONN_ADDRESS:
		FUNC0(&hba->net_dev_lock);
		if (bnx2i_ep->cm_sk)
			len = FUNC2(buf, "%pI4\n", &bnx2i_ep->cm_sk->dst_ip);
		FUNC1(&hba->net_dev_lock);
		break;
	default:
		return -ENOSYS;
	}

	return len;
}