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
typedef  enum via_clksrc { ____Placeholder_via_clksrc } via_clksrc ;

/* Variables and functions */
 int /*<<< orphan*/  VIACR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(enum via_clksrc source, bool use_pll)
{
	u8 data = FUNC0(source, use_pll) << 4;
	FUNC1(VIACR, 0x6C, data, 0xF0);
}