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
typedef  int /*<<< orphan*/  u64 ;
struct nvme_ns {int dummy; } ;
struct nvme_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_IDENTIFY_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 struct nvme_ns* FUNC5 (struct nvme_ctrl*,unsigned int) ; 
 int FUNC6 (struct nvme_ctrl*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_ns*) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_ctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_ctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct nvme_ctrl *ctrl, unsigned nn)
{
	struct nvme_ns *ns;
	__le32 *ns_list;
	unsigned i, j, nsid, prev = 0;
	unsigned num_lists = FUNC0((u64)nn, 1024);
	int ret = 0;

	ns_list = FUNC2(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
	if (!ns_list)
		return -ENOMEM;

	for (i = 0; i < num_lists; i++) {
		ret = FUNC6(ctrl, prev, ns_list);
		if (ret)
			goto free;

		for (j = 0; j < FUNC4(nn, 1024U); j++) {
			nsid = FUNC3(ns_list[j]);
			if (!nsid)
				goto out;

			FUNC10(ctrl, nsid);

			while (++prev < nsid) {
				ns = FUNC5(ctrl, prev);
				if (ns) {
					FUNC7(ns);
					FUNC8(ns);
				}
			}
		}
		nn -= j;
	}
 out:
	FUNC9(ctrl, prev);
 free:
	FUNC1(ns_list);
	return ret;
}