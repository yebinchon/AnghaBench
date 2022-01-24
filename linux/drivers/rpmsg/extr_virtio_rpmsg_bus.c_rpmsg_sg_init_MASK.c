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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void
FUNC8(struct scatterlist *sg, void *cpu_addr, unsigned int len)
{
	if (FUNC1(cpu_addr)) {
		FUNC4(sg, 1);
		FUNC5(sg, FUNC7(cpu_addr), len,
			    FUNC2(cpu_addr));
	} else {
		FUNC0(!FUNC6(cpu_addr));
		FUNC3(sg, cpu_addr, len);
	}
}