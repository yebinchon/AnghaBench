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
 int PPLL_ATOMIC_UPDATE_R ; 
 int /*<<< orphan*/  PPLL_REF_DIV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct aty128fb_par *par)
{
	return !(FUNC0(PPLL_REF_DIV) & PPLL_ATOMIC_UPDATE_R);
}