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
struct TYPE_2__ {int nvecs; } ;
struct bfa_s {TYPE_1__ msix; } ;

/* Variables and functions */
 int BFI_MSIX_CT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int) ; 

void
FUNC3(struct bfa_s *bfa, int nvecs)
{
	FUNC0((nvecs != 1) && (nvecs != BFI_MSIX_CT_MAX));
	FUNC2(bfa, nvecs);

	bfa->msix.nvecs = nvecs;
	FUNC1(bfa);
}