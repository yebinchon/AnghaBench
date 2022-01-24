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

/* Variables and functions */
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int) ; 

__attribute__((used)) static inline void FUNC2(unsigned short ppb)
{
	int i;

	i = FUNC0(ppb);
	FUNC1(ppb, i);
	FUNC1(ppb, i & 0xfe);
}