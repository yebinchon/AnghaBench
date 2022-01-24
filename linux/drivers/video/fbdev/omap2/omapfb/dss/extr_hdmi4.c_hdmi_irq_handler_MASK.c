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
typedef  int u32 ;
struct hdmi_wp_data {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HDMI_IRQ_LINK_CONNECT ; 
 int HDMI_IRQ_LINK_DISCONNECT ; 
 int /*<<< orphan*/  HDMI_PHYPWRCMD_LDOON ; 
 int /*<<< orphan*/  HDMI_PHYPWRCMD_OFF ; 
 int /*<<< orphan*/  HDMI_PHYPWRCMD_TXON ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct hdmi_wp_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_wp_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_wp_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct hdmi_wp_data *wp = data;
	u32 irqstatus;

	irqstatus = FUNC0(wp);
	FUNC1(wp, irqstatus);

	if ((irqstatus & HDMI_IRQ_LINK_CONNECT) &&
			irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
		/*
		 * If we get both connect and disconnect interrupts at the same
		 * time, turn off the PHY, clear interrupts, and restart, which
		 * raises connect interrupt if a cable is connected, or nothing
		 * if cable is not connected.
		 */
		FUNC2(wp, HDMI_PHYPWRCMD_OFF);

		FUNC1(wp, HDMI_IRQ_LINK_CONNECT |
				HDMI_IRQ_LINK_DISCONNECT);

		FUNC2(wp, HDMI_PHYPWRCMD_LDOON);
	} else if (irqstatus & HDMI_IRQ_LINK_CONNECT) {
		FUNC2(wp, HDMI_PHYPWRCMD_TXON);
	} else if (irqstatus & HDMI_IRQ_LINK_DISCONNECT) {
		FUNC2(wp, HDMI_PHYPWRCMD_LDOON);
	}

	return IRQ_HANDLED;
}