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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {scalar_t__ close; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *userdata)
{
	struct net_device *dev = userdata;
	struct wilc_vif *vif = FUNC1(userdata);
	struct wilc *wilc = vif->wilc;

	if (wilc->close) {
		FUNC0(dev, "Can't handle BH interrupt\n");
		return IRQ_HANDLED;
	}

	FUNC2(wilc);

	return IRQ_HANDLED;
}