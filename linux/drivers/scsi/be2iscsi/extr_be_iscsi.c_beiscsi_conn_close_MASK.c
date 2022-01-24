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
struct beiscsi_hba {int dummy; } ;
struct beiscsi_endpoint {int /*<<< orphan*/  ep_cid; struct beiscsi_hba* phba; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*) ; 
 unsigned int FUNC1 (struct beiscsi_hba*,struct beiscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct beiscsi_hba*,struct beiscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct beiscsi_endpoint *beiscsi_ep)
{
	struct beiscsi_hba *phba = beiscsi_ep->phba;
	unsigned int tag, attempts;
	int ret;

	/**
	 * Without successfully invalidating and uploading connection
	 * driver can't reuse the CID so attempt more than once.
	 */
	attempts = 0;
	while (attempts++ < 3) {
		tag = FUNC1(phba, beiscsi_ep);
		if (tag) {
			ret = FUNC3(phba, tag, NULL, NULL);
			if (!ret)
				break;
			FUNC2(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
				    "BS_%d : invalidate conn failed cid %d\n",
				    beiscsi_ep->ep_cid);
		}
	}

	/* wait for all completions to arrive, then process them */
	FUNC5(250);
	/* flush CQ entries */
	FUNC0(phba);

	if (attempts > 3)
		return -1;

	attempts = 0;
	while (attempts++ < 3) {
		tag = FUNC4(phba, beiscsi_ep);
		if (tag) {
			ret = FUNC3(phba, tag, NULL, NULL);
			if (!ret)
				break;
			FUNC2(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
				    "BS_%d : upload conn failed cid %d\n",
				    beiscsi_ep->ep_cid);
		}
	}
	if (attempts > 3)
		return -1;

	return 0;
}