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
struct pcie_device {int dummy; } ;
struct aer_rpc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aer_rpc*) ; 
 struct aer_rpc* FUNC1 (struct pcie_device*) ; 

__attribute__((used)) static void FUNC2(struct pcie_device *dev)
{
	struct aer_rpc *rpc = FUNC1(dev);

	FUNC0(rpc);
}