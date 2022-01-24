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
struct ni_route_tables {int /*<<< orphan*/ * route_values; int /*<<< orphan*/  valid_routes; } ;
struct ni_route_set {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int FUNC1 (int) ; 
 int const NI_RGOUT0 ; 
 int const FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int const) ; 
 struct ni_route_set* FUNC6 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ni_route_set const*,int const) ; 

s8 FUNC8(const int src, const int dest,
			const struct ni_route_tables *tables)
{
	const struct ni_route_set *routes =
		FUNC6(dest, tables->valid_routes);
	const u8 *rv;
	s8 regval;

	/* first check to see if source is listed with bunch of destinations. */
	if (!routes)
		return -1;
	/* 2nd, check to see if destination is in list of source's targets. */
	if (!FUNC7(routes, src))
		return -1;
	/*
	 * finally, check to see if we know how to route...
	 * Be sure to use the B() macro to subtract off the NI_NAMES_BASE before
	 * indexing into the route_values array.
	 */
	rv = tables->route_values;
	regval = FUNC3(rv, FUNC0(src), FUNC0(dest));

	/*
	 * if we did not validate the route, we'll see if we can route through
	 * one of the muxes
	 */
	if (!regval && FUNC5(dest)) {
		regval = FUNC3(rv, FUNC0(src), FUNC0(NI_RGOUT0));
		if (!regval && (FUNC3(rv, FUNC0(src), FUNC0(FUNC2(0))) ||
				FUNC3(rv, FUNC0(src), FUNC0(FUNC2(1))) ||
				FUNC3(rv, FUNC0(src), FUNC0(FUNC2(2))) ||
				FUNC3(rv, FUNC0(src), FUNC0(FUNC2(3)))))
			regval = FUNC1(6);
	}

	if (!regval)
		return -1;
	/* mask out the valid-value marking bit */
	return FUNC4(regval);
}