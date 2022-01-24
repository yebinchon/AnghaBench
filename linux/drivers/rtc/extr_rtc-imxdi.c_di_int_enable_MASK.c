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
struct imxdi_dev {int /*<<< orphan*/  irq_lock; scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ DIER ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct imxdi_dev *imxdi, u32 intr)
{
	unsigned long flags;

	FUNC1(&imxdi->irq_lock, flags);
	FUNC3(FUNC0(imxdi->ioaddr + DIER) | intr,
	       imxdi->ioaddr + DIER);
	FUNC2(&imxdi->irq_lock, flags);
}