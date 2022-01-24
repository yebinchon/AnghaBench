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
struct musb {int dummy; } ;
struct dsps_glue {int /*<<< orphan*/  dev; int /*<<< orphan*/  musb; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsps_glue*,int /*<<< orphan*/ ) ; 
 struct musb* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *priv)
{
	struct dsps_glue *glue = priv;
	struct musb *musb = FUNC2(glue->musb);

	if (!musb)
		return IRQ_NONE;

	FUNC0(glue->dev, "VBUS interrupt\n");
	FUNC1(glue, 0);

	return IRQ_HANDLED;
}