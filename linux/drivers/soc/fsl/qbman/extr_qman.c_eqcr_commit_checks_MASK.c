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
struct qm_eqcr {int busy; int available; TYPE_1__* cursor; } ;
struct TYPE_2__ {int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int QM_FQID_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct qm_eqcr *eqcr)
{
	FUNC0(eqcr->busy);
	FUNC0(!(FUNC1(eqcr->cursor->fqid) & ~QM_FQID_MASK));
	FUNC0(eqcr->available >= 1);
}