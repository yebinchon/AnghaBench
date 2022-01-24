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
struct nvmefc_ls_req_op {int ls_error; int /*<<< orphan*/  ls_done; } ;
struct nvmefc_ls_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvmefc_ls_req_op* FUNC1 (struct nvmefc_ls_req*) ; 

__attribute__((used)) static void
FUNC2(struct nvmefc_ls_req *lsreq, int status)
{
	struct nvmefc_ls_req_op *lsop = FUNC1(lsreq);

	lsop->ls_error = status;
	FUNC0(&lsop->ls_done);
}