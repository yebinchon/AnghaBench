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
struct fc_seq {int /*<<< orphan*/  id; } ;
struct fc_exch {int /*<<< orphan*/  f_ctl; int /*<<< orphan*/  seq_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_seq* FUNC1 (struct fc_exch*,int /*<<< orphan*/ ) ; 
 struct fc_exch* FUNC2 (struct fc_seq*) ; 

__attribute__((used)) static struct fc_seq *FUNC3(struct fc_seq *sp)
{
	struct fc_exch *ep = FUNC2(sp);

	sp = FUNC1(ep, ep->seq_id++);
	FUNC0(ep, "f_ctl %6x seq %2x\n",
		    ep->f_ctl, sp->id);
	return sp;
}