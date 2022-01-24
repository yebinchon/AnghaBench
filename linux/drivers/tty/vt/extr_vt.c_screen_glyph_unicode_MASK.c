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
typedef  int /*<<< orphan*/  u32 ;
struct vc_data {int vc_cols; } ;
struct uni_screen {int /*<<< orphan*/ ** lines; } ;

/* Variables and functions */
 struct uni_screen* FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int) ; 

u32 FUNC3(struct vc_data *vc, int n)
{
	struct uni_screen *uniscr = FUNC0(vc);

	if (uniscr)
		return uniscr->lines[n / vc->vc_cols][n % vc->vc_cols];
	return FUNC1(vc, FUNC2(vc, n * 2), 1);
}