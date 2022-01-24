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
struct wl1251 {int /*<<< orphan*/  intr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  HI_CFG ; 
 int /*<<< orphan*/  HI_CFG_DEF_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct wl1251 *wl)
{
	FUNC0(wl, ACX_REG_INTERRUPT_MASK, ~(wl->intr_mask));
	FUNC0(wl, HI_CFG, HI_CFG_DEF_VAL);
}