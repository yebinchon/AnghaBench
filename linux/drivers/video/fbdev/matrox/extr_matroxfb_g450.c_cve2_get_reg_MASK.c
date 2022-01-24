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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct matrox_fb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct matrox_fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct matrox_fb_info *minfo, int reg)
{
	unsigned long flags;
	int val;
	
	FUNC1(flags);
	FUNC2(minfo, 0x87, reg);
	val = FUNC0(minfo, 0x88);
	FUNC3(flags);
	return val;
}