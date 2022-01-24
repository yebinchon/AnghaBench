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
struct TYPE_2__ {int /*<<< orphan*/  io_xri_cnt; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_nblist ; 

__attribute__((used)) static int
FUNC4(struct lpfc_hba *phba)
{
	FUNC0(post_nblist);
	int num_posted, rc = 0;

	/* get all NVME buffers need to repost to a local list */
	FUNC2(phba, &post_nblist);

	/* post the list of nvme buffer sgls to port if available */
	if (!FUNC1(&post_nblist)) {
		num_posted = FUNC3(
			phba, &post_nblist, phba->sli4_hba.io_xri_cnt);
		/* failed to post any nvme buffer, return error */
		if (num_posted == 0)
			rc = -EIO;
	}
	return rc;
}