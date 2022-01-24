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
struct mcfqspi {int /*<<< orphan*/  waitq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MCFQSPI_QIR_SPIF ; 
 int MCFQSPI_QIR_SPIFE ; 
 int /*<<< orphan*/  FUNC0 (struct mcfqspi*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int this_irq, void *dev_id)
{
	struct mcfqspi *mcfqspi = dev_id;

	/* clear interrupt */
	FUNC0(mcfqspi, MCFQSPI_QIR_SPIFE | MCFQSPI_QIR_SPIF);
	FUNC1(&mcfqspi->waitq);

	return IRQ_HANDLED;
}