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
 int /*<<< orphan*/  FUNC0 (unsigned int,int,struct cfb_info*) ; 

__attribute__((used)) static inline void
FUNC1(unsigned int reg, unsigned int val, struct cfb_info *cfb)
{
	FUNC0((reg & 255) | val << 8, 0x3d4, cfb);
}