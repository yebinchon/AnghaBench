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
struct cmdq_pkt {int dummy; } ;
struct cmdq_flush_completion {int err; int /*<<< orphan*/  cmplt; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct cmdq_pkt*,int /*<<< orphan*/ ,struct cmdq_flush_completion*) ; 
 int /*<<< orphan*/  cmdq_pkt_flush_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cmdq_pkt *pkt)
{
	struct cmdq_flush_completion cmplt;
	int err;

	FUNC1(&cmplt.cmplt);
	err = FUNC0(pkt, cmdq_pkt_flush_cb, &cmplt);
	if (err < 0)
		return err;
	FUNC2(&cmplt.cmplt);

	return cmplt.err ? -EFAULT : 0;
}