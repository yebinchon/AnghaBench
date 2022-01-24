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
union qm_mr_entry {scalar_t__ verb; } ;
typedef  scalar_t__ u8 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 scalar_t__ QM_MR_VERB_FQRN ; 
 scalar_t__ QM_MR_VERB_FQRNI ; 
 scalar_t__ QM_MR_VERB_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int retire_complete ; 
 int /*<<< orphan*/  waitqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qman_portal *p, struct qman_fq *fq,
		   const union qm_mr_entry *msg)
{
	u8 verb = (msg->verb & QM_MR_VERB_TYPE_MASK);

	if ((verb != QM_MR_VERB_FQRN) && (verb != QM_MR_VERB_FQRNI)) {
		FUNC1("unexpected FQS message");
		FUNC0(1);
		return;
	}
	FUNC2("Retirement message received\n");
	retire_complete = 1;
	FUNC3(&waitqueue);
}