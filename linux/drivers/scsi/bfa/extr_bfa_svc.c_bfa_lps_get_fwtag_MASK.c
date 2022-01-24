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
typedef  int /*<<< orphan*/  u8 ;
struct bfa_s {int dummy; } ;
struct bfa_lps_mod_s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_tag; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct bfa_lps_mod_s*,int /*<<< orphan*/ ) ; 
 struct bfa_lps_mod_s* FUNC1 (struct bfa_s*) ; 

u8
FUNC2(struct bfa_s *bfa, u8 lp_tag)
{
	struct bfa_lps_mod_s    *mod = FUNC1(bfa);

	return FUNC0(mod, lp_tag)->fw_tag;
}