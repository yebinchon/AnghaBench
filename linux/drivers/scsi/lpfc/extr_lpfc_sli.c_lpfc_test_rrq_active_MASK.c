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
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_nodelist {int /*<<< orphan*/  active_rrqs_xri_bitmap; } ;
struct lpfc_hba {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
			uint16_t  xritag)
{
	if (!ndlp)
		return 0;
	if (!ndlp->active_rrqs_xri_bitmap)
		return 0;
	if (FUNC0(xritag, ndlp->active_rrqs_xri_bitmap))
		return 1;
	else
		return 0;
}