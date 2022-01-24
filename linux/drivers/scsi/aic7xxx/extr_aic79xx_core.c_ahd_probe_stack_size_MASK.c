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
typedef  int u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STACK ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct ahd_softc *ahd)
{
	int last_probe;

	last_probe = 0;
	while (1) {
		int i;

		/*
		 * We avoid using 0 as a pattern to avoid
		 * confusion if the stack implementation
		 * "back-fills" with zeros when "poping'
		 * entries.
		 */
		for (i = 1; i <= last_probe+1; i++) {
		       FUNC1(ahd, STACK, i & 0xFF);
		       FUNC1(ahd, STACK, (i >> 8) & 0xFF);
		}

		/* Verify */
		for (i = last_probe+1; i > 0; i--) {
			u_int stack_entry;

			stack_entry = FUNC0(ahd, STACK)
				    |(FUNC0(ahd, STACK) << 8);
			if (stack_entry != i)
				goto sized;
		}
		last_probe++;
	}
sized:
	return (last_probe);
}