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
typedef  int /*<<< orphan*/  u8 ;
struct ni_route_tables {int /*<<< orphan*/ * route_values; TYPE_1__* valid_routes; } ;
struct ni_route_set {int n_src; int* src; int dest; } ;
struct TYPE_2__ {int n_route_sets; struct ni_route_set* routes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int const NI_RGOUT0 ; 
 int const FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int const) ; 
 unsigned int FUNC4 (struct ni_route_tables const*) ; 

unsigned int FUNC5(const struct ni_route_tables *tables,
				 unsigned int n_pairs,
				 unsigned int *pair_data)
{
	unsigned int n_valid = FUNC4(tables);
	int i;

	if (n_pairs == 0 || n_valid == 0)
		return n_valid;

	if (!pair_data)
		return 0;

	n_valid = 0;

	for (i = 0; i < tables->valid_routes->n_route_sets; ++i) {
		const struct ni_route_set *R = &tables->valid_routes->routes[i];
		int j;

		for (j = 0; j < R->n_src; ++j) {
			const int src  = R->src[j];
			const int dest = R->dest;
			bool valid = false;
			const u8 *rv = tables->route_values;

			if (FUNC2(rv, FUNC0(src), FUNC0(dest)))
				/* direct routing is valid */
				valid = true;
			else if (FUNC3(dest) &&
				 (FUNC2(rv, FUNC0(src), FUNC0(NI_RGOUT0)) ||
				  FUNC2(rv, FUNC0(src), FUNC0(FUNC1(0))) ||
				  FUNC2(rv, FUNC0(src), FUNC0(FUNC1(1))) ||
				  FUNC2(rv, FUNC0(src), FUNC0(FUNC1(2))) ||
				  FUNC2(rv, FUNC0(src), FUNC0(FUNC1(3))))) {
				/* indirect routing also valid */
				valid = true;
			}

			if (valid) {
				pair_data[2 * n_valid] = src;
				pair_data[2 * n_valid + 1] = dest;
				++n_valid;
			}

			if (n_valid >= n_pairs)
				return n_valid;
		}
	}
	return n_valid;
}