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
typedef  int /*<<< orphan*/  u8 ;
struct ssb_bus {int bustype; } ;

/* Variables and functions */
#define  SSB_BUSTYPE_PCI 131 
#define  SSB_BUSTYPE_PCMCIA 130 
#define  SSB_BUSTYPE_SDIO 129 
#define  SSB_BUSTYPE_SSB 128 
 int FUNC0 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus, u8 coreidx)
{
	switch (bus->bustype) {
	case SSB_BUSTYPE_SSB:
		break;
	case SSB_BUSTYPE_PCI:
		return FUNC0(bus, coreidx);
	case SSB_BUSTYPE_PCMCIA:
		return FUNC1(bus, coreidx);
	case SSB_BUSTYPE_SDIO:
		return FUNC2(bus, coreidx);
	}
	return 0;
}