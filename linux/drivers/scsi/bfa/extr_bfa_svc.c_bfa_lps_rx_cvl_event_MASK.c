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
struct bfi_lps_cvl_event_s {int /*<<< orphan*/  bfa_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int dummy; } ;
struct bfa_lps_mod_s {int dummy; } ;

/* Variables and functions */
 struct bfa_lps_s* FUNC0 (struct bfa_lps_mod_s*,int /*<<< orphan*/ ) ; 
 struct bfa_lps_mod_s* FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_LPS_SM_RX_CVL ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_s *bfa, struct bfi_lps_cvl_event_s *cvl)
{
	struct bfa_lps_mod_s	*mod = FUNC1(bfa);
	struct bfa_lps_s	*lps;

	lps = FUNC0(mod, cvl->bfa_tag);

	FUNC2(lps, BFA_LPS_SM_RX_CVL);
}