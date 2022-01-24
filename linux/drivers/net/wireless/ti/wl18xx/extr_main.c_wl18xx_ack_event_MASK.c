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
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_INTERRUPT_TRIG ; 
 int /*<<< orphan*/  WL18XX_INTR_TRIG_EVENT_ACK ; 
 int FUNC0 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct wl1271 *wl)
{
	return FUNC0(wl, REG_INTERRUPT_TRIG,
				WL18XX_INTR_TRIG_EVENT_ACK);
}