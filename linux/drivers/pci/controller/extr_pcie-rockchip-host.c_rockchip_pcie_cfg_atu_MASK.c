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
struct rockchip_pcie {int mem_size; int io_size; scalar_t__ mem_bus_addr; scalar_t__ msg_bus_addr; scalar_t__ io_bus_addr; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_WRAPPER_IO_WRITE ; 
 int /*<<< orphan*/  AXI_WRAPPER_MEM_WRITE ; 
 int /*<<< orphan*/  AXI_WRAPPER_NOR_MSG ; 
 int /*<<< orphan*/  AXI_WRAPPER_TYPE0_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rockchip_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rockchip_pcie*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rockchip_pcie*,int,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	int offset;
	int err;
	int reg_no;

	FUNC1(rockchip,
						 AXI_WRAPPER_TYPE0_CFG);

	for (reg_no = 0; reg_no < (rockchip->mem_size >> 20); reg_no++) {
		err = FUNC3(rockchip, reg_no + 1,
						AXI_WRAPPER_MEM_WRITE,
						20 - 1,
						rockchip->mem_bus_addr +
						(reg_no << 20),
						0);
		if (err) {
			FUNC0(dev, "program RC mem outbound ATU failed\n");
			return err;
		}
	}

	err = FUNC2(rockchip, 2, 32 - 1, 0x0, 0);
	if (err) {
		FUNC0(dev, "program RC mem inbound ATU failed\n");
		return err;
	}

	offset = rockchip->mem_size >> 20;
	for (reg_no = 0; reg_no < (rockchip->io_size >> 20); reg_no++) {
		err = FUNC3(rockchip,
						reg_no + 1 + offset,
						AXI_WRAPPER_IO_WRITE,
						20 - 1,
						rockchip->io_bus_addr +
						(reg_no << 20),
						0);
		if (err) {
			FUNC0(dev, "program RC io outbound ATU failed\n");
			return err;
		}
	}

	/* assign message regions */
	FUNC3(rockchip, reg_no + 1 + offset,
				  AXI_WRAPPER_NOR_MSG,
				  20 - 1, 0, 0);

	rockchip->msg_bus_addr = rockchip->mem_bus_addr +
					((reg_no + offset) << 20);
	return err;
}