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
typedef  int u32 ;
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_USBSTS ; 
 int FUNC0 (struct ci_hdrc*) ; 
 int FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC3(struct ci_hdrc *ci)
{
	u32 reg = FUNC1(ci) & FUNC0(ci);

	FUNC2(ci, OP_USBSTS, ~0, reg);
	return reg;
}