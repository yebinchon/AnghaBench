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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct nvmet_req {int dummy; } ;
struct nvme_ana_rsp_hdr {int /*<<< orphan*/  ngrps; int /*<<< orphan*/  chgcnt; int /*<<< orphan*/  member_0; } ;
struct nvme_ana_group_desc {int /*<<< orphan*/  ngrps; int /*<<< orphan*/  chgcnt; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NVMET_MAX_ANAGRPS ; 
 int NVMET_MAX_NAMESPACES ; 
 int /*<<< orphan*/  NVME_AEN_BIT_ANA_CHANGE ; 
 scalar_t__ NVME_SC_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ana_rsp_hdr*) ; 
 struct nvme_ana_rsp_hdr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_ana_chgcnt ; 
 scalar_t__* nvmet_ana_group_enabled ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nvmet_req*,size_t,struct nvme_ana_rsp_hdr*,int) ; 
 size_t FUNC7 (struct nvmet_req*,size_t,struct nvme_ana_rsp_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvmet_req*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct nvmet_req *req)
{
	struct nvme_ana_rsp_hdr hdr = { 0, };
	struct nvme_ana_group_desc *desc;
	size_t offset = sizeof(struct nvme_ana_rsp_hdr); /* start beyond hdr */
	size_t len;
	u32 grpid;
	u16 ngrps = 0;
	u16 status;

	status = NVME_SC_INTERNAL;
	desc = FUNC4(sizeof(struct nvme_ana_group_desc) +
			NVMET_MAX_NAMESPACES * sizeof(__le32), GFP_KERNEL);
	if (!desc)
		goto out;

	FUNC2(&nvmet_ana_sem);
	for (grpid = 1; grpid <= NVMET_MAX_ANAGRPS; grpid++) {
		if (!nvmet_ana_group_enabled[grpid])
			continue;
		len = FUNC7(req, grpid, desc);
		status = FUNC6(req, offset, desc, len);
		if (status)
			break;
		offset += len;
		ngrps++;
	}
	for ( ; grpid <= NVMET_MAX_ANAGRPS; grpid++) {
		if (nvmet_ana_group_enabled[grpid])
			ngrps++;
	}

	hdr.chgcnt = FUNC1(nvmet_ana_chgcnt);
	hdr.ngrps = FUNC0(ngrps);
	FUNC5(req, NVME_AEN_BIT_ANA_CHANGE);
	FUNC9(&nvmet_ana_sem);

	FUNC3(desc);

	/* copy the header last once we know the number of groups */
	status = FUNC6(req, 0, &hdr, sizeof(hdr));
out:
	FUNC8(req, status);
}