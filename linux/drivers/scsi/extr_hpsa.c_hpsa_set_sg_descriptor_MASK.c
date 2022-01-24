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
struct SGDescriptor {scalar_t__ Ext; int /*<<< orphan*/  Len; int /*<<< orphan*/  Addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 unsigned int FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC4(struct SGDescriptor *desc,
				   struct scatterlist *sg)
{
	u64 addr64 = (u64) FUNC2(sg);
	unsigned int len = FUNC3(sg);

	desc->Addr = FUNC1(addr64);
	desc->Len = FUNC0(len);
	desc->Ext = 0;
}