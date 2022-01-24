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
typedef  int /*<<< orphan*/  u8 ;
struct qedf_ctx {int /*<<< orphan*/ * data_src_addr; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 struct qedf_ctx* FUNC0 (struct fc_lport*) ; 

u8 *FUNC1(struct fc_lport *lport)
{
	struct qedf_ctx *qedf = FUNC0(lport);

	return qedf->data_src_addr;
}