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
typedef  int u32 ;
struct beiscsi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int POST_ERROR_BIT ; 
 int POST_STAGE_ARMFW_RDY ; 
 int POST_STAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct beiscsi_hba *phba)
{
	u32 loop, post, rdy = 0;

	loop = 1000;
	while (loop--) {
		post = FUNC1(phba);
		if (post & POST_ERROR_BIT)
			break;
		if ((post & POST_STAGE_MASK) == POST_STAGE_ARMFW_RDY) {
			rdy = 1;
			break;
		}
		FUNC2(60);
	}

	if (!rdy) {
		FUNC0(phba, KERN_ERR,
			      "BC_%d : FW not ready 0x%x\n", post);
	}

	return rdy;
}