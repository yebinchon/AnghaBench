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
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct scatterlist*) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static u32 FUNC2(struct scatterlist *sgl, u32 max,
				     u32 *nents)
{
	struct scatterlist *sg;
	u32 total = 0;

	for (sg = sgl; sg; sg = FUNC1(sg)) {
		unsigned int len = FUNC0(sg);

		/* check for overflow as well as limit */
		if (((total + len) < total) || ((total + len) > max))
			break;

		total += len;
		(*nents)++;
	}

	return total;
}