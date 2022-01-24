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
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC3(struct scatterlist *sg, int nents)
{
	unsigned		i;

	if (!sg)
		return;
	for (i = 0; i < nents; i++) {
		if (!FUNC1(&sg[i]))
			continue;
		FUNC0(FUNC2(&sg[i]));
	}
	FUNC0(sg);
}