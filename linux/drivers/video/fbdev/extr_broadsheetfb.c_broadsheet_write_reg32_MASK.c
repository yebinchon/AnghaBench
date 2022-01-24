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
typedef  scalar_t__ u16 ;
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*,scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct broadsheetfb_par *par, u16 reg,
					u32 data)
{
	FUNC0(par, reg, FUNC1(data) & 0xFFFF);
	FUNC0(par, reg + 2, (FUNC1(data) >> 16) & 0xFFFF);
}