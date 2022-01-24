#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned short base; } ;
typedef  TYPE_1__ ppa_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short,int) ; 

__attribute__((used)) static void FUNC1(ppa_struct *dev)
{
	unsigned short ppb = dev->base;

	FUNC0(ppb, 0);
	FUNC0(ppb, 0x3c);
	FUNC0(ppb, 0x20);
	FUNC0(ppb, 0xf);
}