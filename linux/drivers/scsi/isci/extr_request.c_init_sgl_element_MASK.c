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
struct scu_sgl_element {scalar_t__ address_modifier; int /*<<< orphan*/  address_lower; int /*<<< orphan*/  address_upper; int /*<<< orphan*/  length; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct scu_sgl_element *e, struct scatterlist *sg)
{
	e->length = FUNC2(sg);
	e->address_upper = FUNC3(FUNC1(sg));
	e->address_lower = FUNC0(FUNC1(sg));
	e->address_modifier = 0;
}