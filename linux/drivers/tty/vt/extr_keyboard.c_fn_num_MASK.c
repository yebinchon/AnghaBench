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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_APPLIC ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  kbd ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	if (FUNC2(kbd, VC_APPLIC))
		FUNC0(vc, 'P', 1);
	else
		FUNC1(vc);
}