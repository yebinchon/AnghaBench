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
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tridentfb_par *par)
{
	while (FUNC1(par, STATUS) & 0xFA800000)
		FUNC0();
}