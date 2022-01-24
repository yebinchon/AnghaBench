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
struct uniphier_tm_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uniphier_tm_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *_tdev)
{
	struct uniphier_tm_dev *tdev = _tdev;

	FUNC0(irq);
	FUNC1(tdev);

	return IRQ_WAKE_THREAD;
}