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
struct aty128fb_par {int dummy; } ;

/* Variables and functions */
 int PPLL_ATOMIC_UPDATE_W ; 
 int /*<<< orphan*/  PPLL_REF_DIV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aty128fb_par const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const struct aty128fb_par *par)
{
	FUNC1(par);

	FUNC2(PPLL_REF_DIV,
		   FUNC0(PPLL_REF_DIV) | PPLL_ATOMIC_UPDATE_W);
}