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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct pqi_sg_descriptor {int /*<<< orphan*/  flags; int /*<<< orphan*/  length; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 unsigned int FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static inline void FUNC4(
	struct pqi_sg_descriptor *sg_descriptor, struct scatterlist *sg)
{
	u64 address = (u64)FUNC2(sg);
	unsigned int length = FUNC3(sg);

	FUNC1(address, &sg_descriptor->address);
	FUNC0(length, &sg_descriptor->length);
	FUNC0(0, &sg_descriptor->flags);
}