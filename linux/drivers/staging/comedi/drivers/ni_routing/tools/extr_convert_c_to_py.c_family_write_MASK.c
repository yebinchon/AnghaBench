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
struct family_route_values {char* family; } ;
typedef  scalar_t__ register_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 unsigned int NI_NAMES_BASE ; 
 unsigned int NI_NUM_NAMES ; 
 scalar_t__ FUNC4 (struct family_route_values const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(const struct family_route_values *rv, FILE *fp)
{
	FUNC7(fp,
		"  \"%s\" : {\n"
		"    # dest -> {src0:val0, src1:val1, ...}\n"
		, rv->family);
	for (unsigned int dest = NI_NAMES_BASE;
	     dest < (NI_NAMES_BASE + NI_NUM_NAMES);
	     ++dest) {
		unsigned int src = NI_NAMES_BASE;

		for (; src < (NI_NAMES_BASE + NI_NUM_NAMES) &&
		     FUNC4(rv, FUNC0(src), FUNC0(dest)) == 0; ++src)
			;

		if (src >= (NI_NAMES_BASE + NI_NUM_NAMES))
			continue; /* no data here */

		FUNC7(fp, "    %u : {\n", dest);
		for (src = NI_NAMES_BASE; src < (NI_NAMES_BASE + NI_NUM_NAMES);
		     ++src) {
			register_type r = FUNC4(rv, FUNC0(src), FUNC0(dest));
			const char *M;

			if (r == 0) {
				continue;
			} else if (FUNC3(r)) {
				M = "V";
			} else if (FUNC1(r)) {
				M = "I";
			} else if (FUNC2(r)) {
				M = "U";
			} else {
				FUNC7(&stderr,
					"Invalid register marking %s[%u][%u] = %u\n",
					rv->family, dest, src, r);
				FUNC6(1);
			}

			FUNC7(fp, "      %u : \"%s(%u)\",\n",
				src, M, FUNC5(r));
		}
		FUNC7(fp, "    },\n");
	}
	FUNC7(fp, "  },\n\n");
}