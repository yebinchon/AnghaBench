#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hysdn_lock; int /*<<< orphan*/  err_log_state; int /*<<< orphan*/  state; scalar_t__ iobase; scalar_t__ irq_enabled; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_STATE_UNUSED ; 
 int /*<<< orphan*/  ERRLOG_STATE_OFF ; 
 unsigned char PCI9050_E1_RESET ; 
 scalar_t__ PCI9050_INTR_REG ; 
 unsigned char PCI9050_INTR_REG_EN1 ; 
 unsigned char PCI9050_INTR_REG_ENPCI ; 
 scalar_t__ PCI9050_USER_IO ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(hysdn_card *card)
{
	unsigned long flags;
	unsigned char val;

	FUNC3(card);	/* first release the net device if existing */
#ifdef CONFIG_HYSDN_CAPI
	hycapi_capi_stop(card);
#endif /* CONFIG_HYSDN_CAPI */
	FUNC4(&card->hysdn_lock, flags);
	val = FUNC0(card->iobase + PCI9050_INTR_REG);	/* get actual value */
	val &= ~(PCI9050_INTR_REG_ENPCI | PCI9050_INTR_REG_EN1);	/* mask irq */
	FUNC1(card->iobase + PCI9050_INTR_REG, val);
	card->irq_enabled = 0;
	FUNC1(card->iobase + PCI9050_USER_IO, PCI9050_E1_RESET);	/* reset E1 processor */
	card->state = CARD_STATE_UNUSED;
	card->err_log_state = ERRLOG_STATE_OFF;		/* currently no log active */

	FUNC5(&card->hysdn_lock, flags);
}