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
typedef  int /*<<< orphan*/  u16 ;
struct nvmet_req {int error_slba; struct nvmet_ns* ns; } ;
struct nvmet_ns {int blksize_shift; int /*<<< orphan*/  bdev; } ;
struct nvme_dsm_range {int /*<<< orphan*/  slba; int /*<<< orphan*/  nlb; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_SC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio**) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_req*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC4(struct nvmet_req *req,
		struct nvme_dsm_range *range, struct bio **bio)
{
	struct nvmet_ns *ns = req->ns;
	int ret;

	ret = FUNC0(ns->bdev,
			FUNC3(range->slba) << (ns->blksize_shift - 9),
			FUNC2(range->nlb) << (ns->blksize_shift - 9),
			GFP_KERNEL, 0, bio);
	if (ret && ret != -EOPNOTSUPP) {
		req->error_slba = FUNC3(range->slba);
		return FUNC1(req, ret);
	}
	return NVME_SC_SUCCESS;
}