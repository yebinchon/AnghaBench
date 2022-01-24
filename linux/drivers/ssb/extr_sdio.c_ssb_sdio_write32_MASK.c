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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int sdio_sbaddr; int quirks; int /*<<< orphan*/  host_sdio; } ;

/* Variables and functions */
 int SBSDIO_SB_ACCESS_2_4B_FLAG ; 
 int SBSDIO_SB_OFT_ADDR_MASK ; 
 int SSB_QUIRK_SDIO_READ_AFTER_WRITE32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_bus*,struct ssb_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ssb_device *dev, u16 offset, u32 val)
{
	struct ssb_bus *bus = dev->bus;
	int error = 0;

	FUNC1(bus->host_sdio);
	if (FUNC7(FUNC6(bus, dev)))
		goto out;
	offset |= bus->sdio_sbaddr & 0xffff;
	offset &= SBSDIO_SB_OFT_ADDR_MASK;
	offset |= SBSDIO_SB_ACCESS_2_4B_FLAG;	/* 32 bit data access */
	FUNC4(bus->host_sdio, val, offset, &error);
	if (error) {
		FUNC0(FUNC5(bus), "%04X:%04X < %08x, error %d\n",
			bus->sdio_sbaddr >> 16, offset, val, error);
	}
	if (bus->quirks & SSB_QUIRK_SDIO_READ_AFTER_WRITE32)
		FUNC2(bus->host_sdio, 0, &error);
out:
	FUNC3(bus->host_sdio);
}