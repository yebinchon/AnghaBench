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
struct TYPE_3__ {unsigned short base; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ ppa_struct ;

/* Variables and functions */
 int CONNECT_EPP_MAYBE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int) ; 

__attribute__((used)) static inline void FUNC2(ppa_struct *dev, int flag)
{
	unsigned short ppb = dev->base;

	FUNC1(ppb, 0);
	FUNC1(ppb, 0x3c);
	FUNC1(ppb, 0x20);
	if ((flag == CONNECT_EPP_MAYBE) && FUNC0(dev->mode))
		FUNC1(ppb, 0xcf);
	else
		FUNC1(ppb, 0x8f);
}