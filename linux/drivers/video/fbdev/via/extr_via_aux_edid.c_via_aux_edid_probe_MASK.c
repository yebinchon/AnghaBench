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
struct via_aux_drv {int addr; int /*<<< orphan*/  get_preferred_mode; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  name; struct via_aux_bus* bus; } ;
struct via_aux_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  get_preferred_mode ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC0 (struct via_aux_drv*) ; 
 int /*<<< orphan*/  FUNC1 (struct via_aux_drv*) ; 

void FUNC2(struct via_aux_bus *bus)
{
	struct via_aux_drv drv = {
		.bus	=	bus,
		.addr	=	0x50,
		.name	=	name,
		.cleanup	=	cleanup,
		.get_preferred_mode	=	get_preferred_mode};

	FUNC0(&drv);

	/* as EDID devices can be connected/disconnected just add the driver */
	FUNC1(&drv);
}