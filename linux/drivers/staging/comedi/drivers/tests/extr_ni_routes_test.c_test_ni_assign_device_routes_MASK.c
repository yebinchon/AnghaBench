#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ni_device_routes {int n_route_sets; int /*<<< orphan*/  device; TYPE_1__* routes; } ;
struct TYPE_6__ {int /*<<< orphan*/ * route_values; struct ni_device_routes* valid_routes; } ;
struct TYPE_5__ {TYPE_3__ routing_tables; } ;
struct TYPE_4__ {scalar_t__ dest; int n_src; scalar_t__* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NI_10MHzRefClock ; 
 scalar_t__ NI_AI_ConvertClock ; 
 scalar_t__ NI_AI_SampleClock ; 
 scalar_t__ NI_AI_StartTrigger ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int NI_PFI_OUTPUT_AI_CONVERT ; 
 scalar_t__ PXI_Star ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  ni_eseries ; 
 int /*<<< orphan*/  ni_mseries ; 
 int /*<<< orphan*/  pci_6070e ; 
 int /*<<< orphan*/  pci_6220 ; 
 TYPE_2__ private ; 
 int FUNC9 (struct ni_device_routes const*) ; 
 int FUNC10 (struct ni_device_routes const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 

void FUNC13(void)
{
	const struct ni_device_routes *devroutes, *olddevroutes;
	const u8 *table, *oldtable;

	FUNC6();
	FUNC8(ni_eseries, pci_6070e, &private.routing_tables);
	devroutes = private.routing_tables.valid_routes;
	table = private.routing_tables.route_values;

	FUNC12(FUNC11(devroutes->device, pci_6070e, 10) == 0,
		 "find device pci-6070e\n");
	FUNC12(devroutes->n_route_sets == 37,
		 "number of pci-6070e route_sets == 37\n");
	FUNC12(devroutes->routes->dest == FUNC2(0),
		 "first pci-6070e route_set is for NI_PFI(0)\n");
	FUNC12(devroutes->routes->n_src == 1,
		 "first pci-6070e route_set length == 1\n");
	FUNC12(devroutes->routes->src[0] == NI_AI_StartTrigger,
		 "first pci-6070e route_set src. == NI_AI_StartTrigger\n");
	FUNC12(devroutes->routes[10].dest == FUNC4(0),
		 "10th pci-6070e route_set is for TRIGGER_LINE(0)\n");
	FUNC12(devroutes->routes[10].n_src == 10,
		 "10th pci-6070e route_set length == 10\n");
	FUNC12(devroutes->routes[10].src[0] == FUNC1(0),
		 "10th pci-6070e route_set src. == NI_CtrSource(0)\n");
	FUNC12(FUNC9(devroutes),
		 "all pci-6070e route_sets in order of signal destination\n");
	FUNC12(FUNC10(devroutes),
		 "all pci-6070e route_set->src's in order of signal source\n");

	FUNC12(
	  FUNC3(table, FUNC0(PXI_Star), FUNC0(NI_AI_SampleClock)) == FUNC5(17) &&
	  FUNC3(table, FUNC0(NI_10MHzRefClock), FUNC0(FUNC4(0))) == 0 &&
	  FUNC3(table, FUNC0(NI_AI_ConvertClock), FUNC0(FUNC2(0))) == 0 &&
	  FUNC3(table, FUNC0(NI_AI_ConvertClock), FUNC0(FUNC2(2))) ==
		FUNC5(NI_PFI_OUTPUT_AI_CONVERT),
	  "pci-6070e finds e-series route_values table\n");

	olddevroutes = devroutes;
	oldtable = table;
	FUNC7();
	FUNC8(ni_mseries, pci_6220, &private.routing_tables);
	devroutes = private.routing_tables.valid_routes;
	table = private.routing_tables.route_values;

	FUNC12(FUNC11(devroutes->device, pci_6220, 10) == 0,
		 "find device pci-6220\n");
	FUNC12(oldtable != table, "pci-6220 find other route_values table\n");

	FUNC12(
	  FUNC3(table, FUNC0(PXI_Star), FUNC0(NI_AI_SampleClock)) == FUNC5(20) &&
	  FUNC3(table, FUNC0(NI_10MHzRefClock), FUNC0(FUNC4(0))) == FUNC5(12) &&
	  FUNC3(table, FUNC0(NI_AI_ConvertClock), FUNC0(FUNC2(0))) == FUNC5(3) &&
	  FUNC3(table, FUNC0(NI_AI_ConvertClock), FUNC0(FUNC2(2))) == FUNC5(3),
	  "pci-6220 finds m-series route_values table\n");
}