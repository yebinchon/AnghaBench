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
struct sockaddr {int dummy; } ;
struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct beiscsi_hba {int /*<<< orphan*/  state; } ;
struct beiscsi_endpoint {struct iscsi_endpoint* openiscsi_ep; struct beiscsi_hba* phba; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_LINK_UP ; 
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct iscsi_endpoint* FUNC0 (int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct iscsi_endpoint*,int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 struct iscsi_endpoint* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_endpoint*) ; 
 struct beiscsi_hba* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct iscsi_endpoint *
FUNC9(struct Scsi_Host *shost, struct sockaddr *dst_addr,
		   int non_blocking)
{
	struct beiscsi_hba *phba;
	struct beiscsi_endpoint *beiscsi_ep;
	struct iscsi_endpoint *ep;
	int ret;

	if (!shost) {
		ret = -ENXIO;
		FUNC7("beiscsi_ep_connect shost is NULL\n");
		return FUNC0(ret);
	}

	phba = FUNC6(shost);
	if (!FUNC1(phba)) {
		ret = -EIO;
		FUNC2(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
			    "BS_%d : HBA in error 0x%lx\n", phba->state);
		return FUNC0(ret);
	}
	if (!FUNC8(BEISCSI_HBA_LINK_UP, &phba->state)) {
		ret = -EBUSY;
		FUNC2(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
			    "BS_%d : The Adapter Port state is Down!!!\n");
		return FUNC0(ret);
	}

	ep = FUNC4(sizeof(struct beiscsi_endpoint));
	if (!ep) {
		ret = -ENOMEM;
		return FUNC0(ret);
	}

	beiscsi_ep = ep->dd_data;
	beiscsi_ep->phba = phba;
	beiscsi_ep->openiscsi_ep = ep;
	ret = FUNC3(ep, NULL, dst_addr, non_blocking);
	if (ret) {
		FUNC2(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
			    "BS_%d : Failed in beiscsi_open_conn\n");
		goto free_ep;
	}

	return ep;

free_ep:
	FUNC5(ep);
	return FUNC0(ret);
}