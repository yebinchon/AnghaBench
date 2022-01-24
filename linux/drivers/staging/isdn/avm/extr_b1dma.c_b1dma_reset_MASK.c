#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int csr; scalar_t__ cardtype; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  AMCC_INTCSR ; 
 int /*<<< orphan*/  AMCC_MCSR ; 
 int /*<<< orphan*/  AMCC_RXLEN ; 
 int /*<<< orphan*/  AMCC_TXLEN ; 
 scalar_t__ avm_t1pci ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3(avmcard *card)
{
	card->csr = 0x0;
	FUNC0(card, card->csr, AMCC_INTCSR);
	FUNC0(card, 0, AMCC_MCSR);
	FUNC0(card, 0, AMCC_RXLEN);
	FUNC0(card, 0, AMCC_TXLEN);

	FUNC2(card->port, 0x10, 0x00);
	FUNC2(card->port, 0x07, 0x00);

	FUNC0(card, 0, AMCC_MCSR);
	FUNC1(10);
	FUNC0(card, 0x0f000000, AMCC_MCSR); /* reset all */
	FUNC1(10);
	FUNC0(card, 0, AMCC_MCSR);
	if (card->cardtype == avm_t1pci)
		FUNC1(42);
	else
		FUNC1(10);
}