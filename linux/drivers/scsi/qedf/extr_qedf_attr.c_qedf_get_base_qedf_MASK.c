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
struct qedf_ctx {struct fc_lport* lport; } ;
struct fc_lport {int /*<<< orphan*/  vport; } ;

/* Variables and functions */
 struct qedf_ctx* FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedf_ctx*) ; 
 struct fc_lport* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct qedf_ctx *FUNC4(struct qedf_ctx *qedf)
{
	struct fc_lport *lport;
	struct fc_lport *base_lport;

	if (!(FUNC1(qedf)))
		return NULL;

	lport = qedf->lport;
	base_lport = FUNC2(FUNC3(lport->vport));
	return FUNC0(base_lport);
}