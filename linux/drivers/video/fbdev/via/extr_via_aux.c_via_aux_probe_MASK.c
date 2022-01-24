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
struct via_aux_bus {int /*<<< orphan*/  drivers; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct via_aux_bus* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC9 (struct via_aux_bus*) ; 
 int /*<<< orphan*/  FUNC10 (struct via_aux_bus*) ; 

struct via_aux_bus *FUNC11(struct i2c_adapter *adap)
{
	struct via_aux_bus *bus;

	if (!adap)
		return NULL;

	bus = FUNC1(sizeof(*bus), GFP_KERNEL);
	if (!bus)
		return NULL;

	bus->adap = adap;
	FUNC0(&bus->drivers);

	FUNC3(bus);
	FUNC10(bus);
	FUNC9(bus);
	FUNC8(bus);
	FUNC7(bus);
	FUNC6(bus);
	FUNC5(bus);
	FUNC4(bus);
	FUNC2(bus);

	return bus;
}