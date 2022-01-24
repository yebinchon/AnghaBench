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
struct slgt_info {int signals; int /*<<< orphan*/  reg_addr; } ;

/* Variables and functions */
 int IRQ_ALL ; 
 int IRQ_MASTER ; 
 int SerialSignal_DTR ; 
 int SerialSignal_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 

__attribute__((used)) static void FUNC4(struct slgt_info *info)
{
	if (!info->reg_addr)
		return;

	FUNC3(info);
	FUNC0(info);

	info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
	FUNC1(info);

	FUNC2(info, IRQ_ALL | IRQ_MASTER);
}