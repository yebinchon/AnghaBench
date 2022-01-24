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
typedef  int u32 ;
struct TYPE_2__ {int revision; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_chipcommon {struct ssb_device* dev; } ;
struct ssb_bus {int chip_id; scalar_t__ chip_rev; } ;

/* Variables and functions */
 int FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  SSB_CHIPCO_FLASH_WAITCNT ; 
 int /*<<< orphan*/  SSB_CHIPCO_PCMCIA_MEMWAIT ; 
 int /*<<< orphan*/  SSB_CHIPCO_PROG_CFG ; 
 int /*<<< orphan*/  SSB_CHIPCO_PROG_WAITCNT ; 
 int SSB_FLASH_WCNT_1_SHIFT ; 
 int SSB_FLASH_WCNT_3_SHIFT ; 
 int SSB_PROG_WCNT_1_SHIFT ; 
 int SSB_PROG_WCNT_2_SHIFT ; 
 int SSB_PROG_WCNT_3_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ssb_chipcommon *cc,
			    unsigned long ns)
{
	struct ssb_device *dev = cc->dev;
	struct ssb_bus *bus = dev->bus;
	u32 tmp;

	/* set register for external IO to control LED. */
	FUNC1(cc, SSB_CHIPCO_PROG_CFG, 0x11);
	tmp = FUNC0(10, ns) << SSB_PROG_WCNT_3_SHIFT;		/* Waitcount-3 = 10ns */
	tmp |= FUNC0(40, ns) << SSB_PROG_WCNT_1_SHIFT;	/* Waitcount-1 = 40ns */
	tmp |= FUNC0(240, ns);				/* Waitcount-0 = 240ns */
	FUNC1(cc, SSB_CHIPCO_PROG_WAITCNT, tmp);	/* 0x01020a0c for a 100Mhz clock */

	/* Set timing for the flash */
	tmp = FUNC0(10, ns) << SSB_FLASH_WCNT_3_SHIFT;	/* Waitcount-3 = 10nS */
	tmp |= FUNC0(10, ns) << SSB_FLASH_WCNT_1_SHIFT;	/* Waitcount-1 = 10nS */
	tmp |= FUNC0(120, ns);				/* Waitcount-0 = 120nS */
	if ((bus->chip_id == 0x5365) ||
	    (dev->id.revision < 9))
		FUNC1(cc, SSB_CHIPCO_FLASH_WAITCNT, tmp);
	if ((bus->chip_id == 0x5365) ||
	    (dev->id.revision < 9) ||
	    ((bus->chip_id == 0x5350) && (bus->chip_rev == 0)))
		FUNC1(cc, SSB_CHIPCO_PCMCIA_MEMWAIT, tmp);

	if (bus->chip_id == 0x5350) {
		/* Enable EXTIF */
		tmp = FUNC0(10, ns) << SSB_PROG_WCNT_3_SHIFT;	  /* Waitcount-3 = 10ns */
		tmp |= FUNC0(20, ns) << SSB_PROG_WCNT_2_SHIFT;  /* Waitcount-2 = 20ns */
		tmp |= FUNC0(100, ns) << SSB_PROG_WCNT_1_SHIFT; /* Waitcount-1 = 100ns */
		tmp |= FUNC0(120, ns);			  /* Waitcount-0 = 120ns */
		FUNC1(cc, SSB_CHIPCO_PROG_WAITCNT, tmp); /* 0x01020a0c for a 100Mhz clock */
	}
}