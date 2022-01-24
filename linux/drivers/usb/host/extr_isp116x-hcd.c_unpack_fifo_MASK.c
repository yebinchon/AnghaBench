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
struct ptd {void* faddr; void* len; void* mps; void* count; } ;
struct isp116x_ep {int /*<<< orphan*/  data; int /*<<< orphan*/  length; struct isp116x_ep* active; struct ptd ptd; } ;
struct isp116x {scalar_t__ atl_last_dir; int atl_buflen; int atl_bufshrt; struct isp116x_ep* atl_active; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  HCATLPORT ; 
 int /*<<< orphan*/  HCXFERCTR ; 
 int /*<<< orphan*/  HCuPINT ; 
 int HCuPINT_AIIEOT ; 
 scalar_t__ PTD_DIR_IN ; 
 int /*<<< orphan*/  FUNC2 (struct ptd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptd*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct isp116x*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp116x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp116x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct isp116x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct isp116x *isp116x)
{
	struct isp116x_ep *ep;
	struct ptd *ptd;
	int buflen = isp116x->atl_last_dir == PTD_DIR_IN
	    ? isp116x->atl_buflen : isp116x->atl_bufshrt;

	FUNC6(isp116x, HCuPINT, HCuPINT_AIIEOT);
	FUNC6(isp116x, HCXFERCTR, buflen);
	FUNC5(isp116x, HCATLPORT);
	for (ep = isp116x->atl_active; ep; ep = ep->active) {
		ptd = &ep->ptd;
		ptd->count = FUNC4(isp116x);
		ptd->mps = FUNC4(isp116x);
		ptd->len = FUNC4(isp116x);
		ptd->faddr = FUNC4(isp116x);
		buflen -= sizeof(struct ptd);
		/* Skip reading data for last Setup or Out PTD */
		if (ep->active || (isp116x->atl_last_dir == PTD_DIR_IN)) {
			FUNC7(isp116x, ep->data, ep->length);
			buflen -= FUNC0(ep->length, 4);
		}
		FUNC2(ptd);
		FUNC3(ptd, ep->data);
	}
	FUNC1(buflen);
}