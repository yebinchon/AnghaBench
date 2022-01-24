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
struct nvmet_sq {int /*<<< orphan*/  confirm_done; int /*<<< orphan*/  free_done; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_sq_free ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct nvmet_sq *sq)
{
	int ret;

	ret = FUNC1(&sq->ref, nvmet_sq_free, 0, GFP_KERNEL);
	if (ret) {
		FUNC2("percpu_ref init failed!\n");
		return ret;
	}
	FUNC0(&sq->free_done);
	FUNC0(&sq->confirm_done);

	return 0;
}