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
typedef  int u8 ;
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICEADDR_USBADR ; 
 int /*<<< orphan*/  OP_DEVICEADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ci_hdrc *ci, u8 value)
{
	FUNC1(ci, OP_DEVICEADDR, DEVICEADDR_USBADR,
		 value << FUNC0(DEVICEADDR_USBADR));
}