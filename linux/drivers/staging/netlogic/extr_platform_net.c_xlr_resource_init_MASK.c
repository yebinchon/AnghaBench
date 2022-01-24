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
struct resource {char* name; int start; int end; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct resource *res, int offset, int irq)
{
	res->name = "gmac";

	res->start = FUNC0(FUNC1(offset));
	res->end = res->start + 0xfff;
	res->flags = IORESOURCE_MEM;

	res++;
	res->name = "gmac";
	res->start = irq;
	res->end = irq;
	res->flags = IORESOURCE_IRQ;
}