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
struct slgt_info {int if_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 unsigned short BIT7 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MGSL_INTERFACE_RTS_EN ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 unsigned short FUNC2 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC6(struct slgt_info *info, int if_mode)
{
 	unsigned long flags;
	unsigned short val;

	FUNC0(("%s set_interface=%x)\n", info->device_name, if_mode));
	FUNC3(&info->lock,flags);
	info->if_mode = if_mode;

	FUNC1(info);

	/* TCR (tx control) 07  1=RTS driver control */
	val = FUNC2(info, TCR);
	if (info->if_mode & MGSL_INTERFACE_RTS_EN)
		val |= BIT7;
	else
		val &= ~BIT7;
	FUNC5(info, TCR, val);

	FUNC4(&info->lock,flags);
	return 0;
}