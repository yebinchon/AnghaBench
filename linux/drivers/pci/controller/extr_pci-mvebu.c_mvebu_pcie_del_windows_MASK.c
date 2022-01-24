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
struct mvebu_pcie_port {int dummy; } ;
typedef  size_t phys_addr_t ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 

__attribute__((used)) static void FUNC2(struct mvebu_pcie_port *port,
				   phys_addr_t base, size_t size)
{
	while (size) {
		size_t sz = 1 << (FUNC0(size) - 1);

		FUNC1(base, sz);
		base += sz;
		size -= sz;
	}
}