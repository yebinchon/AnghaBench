#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct msi_msg {int data; int /*<<< orphan*/  address_lo; int /*<<< orphan*/  address_hi; } ;
struct irq_data {int hwirq; } ;
struct altera_msi {TYPE_1__* pdev; scalar_t__ vector_phy; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct altera_msi* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data, struct msi_msg *msg)
{
	struct altera_msi *msi = FUNC1(data);
	phys_addr_t addr = msi->vector_phy + (data->hwirq * sizeof(u32));

	msg->address_lo = FUNC2(addr);
	msg->address_hi = FUNC3(addr);
	msg->data = data->hwirq;

	FUNC0(&msi->pdev->dev, "msi#%d address_hi %#x address_lo %#x\n",
		(int)data->hwirq, msg->address_hi, msg->address_lo);
}