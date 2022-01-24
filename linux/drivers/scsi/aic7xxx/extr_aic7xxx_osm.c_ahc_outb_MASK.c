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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ ioport; scalar_t__ maddr; } ;
struct ahc_softc {scalar_t__ tag; TYPE_1__ bsh; } ;

/* Variables and functions */
 scalar_t__ BUS_SPACE_MEMIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(struct ahc_softc * ahc, long port, uint8_t val)
{
	if (ahc->tag == BUS_SPACE_MEMIO) {
		FUNC2(val, ahc->bsh.maddr + port);
	} else {
		FUNC1(val, ahc->bsh.ioport + port);
	}
	FUNC0();
}