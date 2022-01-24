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
typedef  int u16 ;

/* Variables and functions */
 int cfgSTATUS ; 
 int FUNC0 (int*) ; 
 scalar_t__ remapped_base ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 

__attribute__((used)) static void FUNC3(void)
{
	u16 val = FUNC0((u16 *) remapped_base + cfgSTATUS);
	FUNC2(val | 0x08, (u16 *) remapped_base + cfgSTATUS);
	FUNC1(100);
	FUNC2(0x00, (u16 *) remapped_base + cfgSTATUS);
	FUNC1(100);
}