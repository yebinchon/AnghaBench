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
typedef  scalar_t__ u32 ;
struct sym_hcb {int dummy; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_TINY ; 
 int /*<<< orphan*/  HS_SEL_TIMEOUT ; 
 scalar_t__ FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*) ; 
 int /*<<< orphan*/  wf_sel_done ; 

__attribute__((used)) static void FUNC5 (struct sym_hcb *np)
{
	u32 dsp	= FUNC0(np, nc_dsp);

	if (DEBUG_FLAGS & DEBUG_TINY) FUNC2 ("T");

	if (dsp == FUNC1(np, wf_sel_done) + 8)
		FUNC3(np, HS_SEL_TIMEOUT);
	else
		FUNC4(np);
}