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
struct tsi721_device {int ibwin_cnt; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int TSI721_IBWIN_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tsi721_device *priv)
{
	int i;

	/* Disable all SR2PC inbound windows */
	for (i = 0; i < TSI721_IBWIN_NUM; i++)
		FUNC1(0, priv->regs + FUNC0(i));
	priv->ibwin_cnt = TSI721_IBWIN_NUM;
}