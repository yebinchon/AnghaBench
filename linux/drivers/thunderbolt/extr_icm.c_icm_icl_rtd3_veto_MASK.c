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
struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;
struct icm_icl_event_rtd3_veto {scalar_t__ veto_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb*) ; 
 int /*<<< orphan*/  FUNC1 (struct tb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tb *tb, const struct icm_pkg_header *hdr)
{
	const struct icm_icl_event_rtd3_veto *pkg =
		(const struct icm_icl_event_rtd3_veto *)hdr;

	FUNC2(tb, "ICM rtd3 veto=0x%08x\n", pkg->veto_reason);

	if (pkg->veto_reason)
		FUNC0(tb);
	else
		FUNC1(tb);
}