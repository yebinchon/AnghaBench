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
struct ni_device_routes {char* device; TYPE_1__* routes; } ;
struct TYPE_2__ {scalar_t__ dest; scalar_t__* src; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(const struct ni_device_routes *dR, FILE *fp)
{
	FUNC1(fp,
		"  \"%s\" : {\n"
		"    # dest -> [src0, src1, ...]\n"
		, dR->device);

	unsigned int i = 0;

	while (dR->routes[i].dest != 0) {
		if (!FUNC2(dR->routes[i].dest)) {
			FUNC1(&stderr,
				"Invalid NI signal value [%u] for destination %s.[%u]\n",
				dR->routes[i].dest, dR->device, i);
			FUNC0(1);
		}

		FUNC1(fp, "    %u : [", dR->routes[i].dest);

		unsigned int j = 0;

		while (dR->routes[i].src[j] != 0) {
			if (!FUNC2(dR->routes[i].src[j])) {
				FUNC1(&stderr,
					"Invalid NI signal value [%u] for source %s.[%u].[%u]\n",
					dR->routes[i].src[j], dR->device, i, j);
				FUNC0(1);
			}

			FUNC1(fp, "%u,", dR->routes[i].src[j]);

			++j;
		}
		FUNC1(fp, "],\n");

		++i;
	}
	FUNC1(fp, "  },\n\n");
}