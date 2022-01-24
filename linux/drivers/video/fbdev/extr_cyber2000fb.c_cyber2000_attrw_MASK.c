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
struct cfb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,struct cfb_info*) ; 

__attribute__((used)) static inline void
FUNC2(unsigned int reg, unsigned int val, struct cfb_info *cfb)
{
	FUNC0(0x3da, cfb);
	FUNC1(reg, 0x3c0, cfb);
	FUNC0(0x3c1, cfb);
	FUNC1(val, 0x3c0, cfb);
}