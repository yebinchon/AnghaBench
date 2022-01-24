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
struct ssb_bus {int sdio_sbaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBSDIO_FUNC1_SBADDRHIGH ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_SBADDRLOW ; 
 int /*<<< orphan*/  SBSDIO_FUNC1_SBADDRMID ; 
 int SBSDIO_SBADDRHIGH_MASK ; 
 int SBSDIO_SBADDRLOW_MASK ; 
 int SBSDIO_SBADDRMID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*) ; 
 int FUNC2 (struct ssb_bus*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus, u32 address)
{
	int error;

	error = FUNC2(bus, SBSDIO_FUNC1_SBADDRLOW,
				(address >> 8) & SBSDIO_SBADDRLOW_MASK);
	if (error)
		goto out;
	error = FUNC2(bus, SBSDIO_FUNC1_SBADDRMID,
				(address >> 16) & SBSDIO_SBADDRMID_MASK);
	if (error)
		goto out;
	error = FUNC2(bus, SBSDIO_FUNC1_SBADDRHIGH,
				(address >> 24) & SBSDIO_SBADDRHIGH_MASK);
	if (error)
		goto out;
	bus->sdio_sbaddr = address;
out:
	if (error) {
		FUNC0(FUNC1(bus), "failed to set address window"
			" to 0x%08x, error %d\n", address, error);
	}

	return error;
}