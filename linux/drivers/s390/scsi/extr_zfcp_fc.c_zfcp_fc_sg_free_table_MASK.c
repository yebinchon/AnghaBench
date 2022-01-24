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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 scalar_t__ FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC3(struct scatterlist *sg, int count)
{
	int i;

	for (i = 0; i < count; i++, sg = FUNC1(sg))
		if (sg)
			FUNC0((unsigned long) FUNC2(sg));
		else
			break;
}