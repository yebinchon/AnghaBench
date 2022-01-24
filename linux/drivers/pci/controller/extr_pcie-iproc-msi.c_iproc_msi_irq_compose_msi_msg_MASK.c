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
struct msi_msg {int data; int /*<<< orphan*/  address_hi; int /*<<< orphan*/  address_lo; } ;
struct irq_data {int hwirq; } ;
struct iproc_msi {scalar_t__ msi_addr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iproc_msi*,int) ; 
 struct iproc_msi* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data,
					  struct msi_msg *msg)
{
	struct iproc_msi *msi = FUNC1(data);
	dma_addr_t addr;

	addr = msi->msi_addr + FUNC0(msi, data->hwirq);
	msg->address_lo = FUNC2(addr);
	msg->address_hi = FUNC3(addr);
	msg->data = data->hwirq << 5;
}